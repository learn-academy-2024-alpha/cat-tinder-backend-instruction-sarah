require 'rails_helper'

RSpec.describe 'Cats', type: :request do
  describe 'GET /index' do
    it 'return a http status of success' do
      get cats_path
      expect(response).to have_http_status(200)
    end
  end
  describe 'POST /create' do
    it 'return a http status of success and creates a valid cat' do
      post cats_path, params: {
        cat: {
          name: 'Test cat',
          age: 4,
          enjoys: 'testing attribute for enjoys',
          image: 'https://images.unsplash.com/photo-1543852786-1cf6624b9987?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
        }
      }
      cat = Cat.where(name: 'Test cat').first
      expect(cat.valid?).to eq(true)
      expect(response).to have_http_status(200)
    end
  end
  describe 'PATCH /update' do
    it 'return a http status of success makes valid updates to a cat' do
      post cats_path, params: {
        cat: {
          name: 'Test cat',
          age: 4,
          enjoys: 'testing attribute for enjoys',
          image: 'https://images.unsplash.com/photo-1543852786-1cf6624b9987?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
        }
      }
      cat = Cat.where(name: 'Test cat').first
      patch cat_path(cat), params: {
        cat: {
          name: 'Test cat for patch',
          age: 5,
          enjoys: 'updated testing attribute for enjoys',
          image: 'https://images.unsplash.com/photo-1577023311546-cdc07a8454d9?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
        }
      }
      cat = Cat.where(name: 'Test cat for patch').first
      expect(cat.name).to eq('Test cat for patch')
      expect(cat.age).to eq(5)
      expect(cat.enjoys).to eq('updated testing attribute for enjoys')
      expect(cat.image).to eq('https://images.unsplash.com/photo-1577023311546-cdc07a8454d9?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
      expect(response).to have_http_status(200)
    end
  end
  describe 'DELETE #destroy' do
    it 'deletes the cat' do
      cat = Cat.create(
        name: 'Test Cat for delete request', 
        age: 5, 
        enjoys: 'Test for enjoys attribute', 
        image: 'https://images.unsplash.com/photo-1526336024174-e58f5cdd8e13?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
      )
      delete cat_path(cat)
      cat = Cat.where(name: 'Test Cat for delete request').first
      expect(cat).to eq(nil)
    end
  end
end
