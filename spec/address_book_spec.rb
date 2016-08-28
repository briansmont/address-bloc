require_relative '../models/address_book'

RSpec.describe AddressBook do
    describe 'attributes' do
        it "responds to entries" do
            book = AddressBook.new
            expect(book).to respond_to(:entries)
        end
        
        it "initializes entries as an array" do
            book = AddressBook.new
            expect(book.entries).to be_an(Array)
        end
        
        it "initializes entries as empty" do
            book = AddressBook.new
            expect(book.entries.size).to eq(0)
        end
        
    end
    
    describe "#remove_entry" do
       it "deletes an entry using name/phone/email" do
          book = AddressBook.new
          book.add_entry('Jeff F', '201.694.4079', 'jfarber@gmail.com')
          
          name = "Brian Mont"
          phone_number = '201.707.3742'
          email = 'briansmont830@gmail.com'
          book.add_entry(name, phone_number, email)
          
          expect(book.entries.size).to eq(2)
          book.remove_entry(name, phone_number, email)
          expect(book.entries.size).to eq(1)
          expect(book.entries.first.name).to eq("Jeff F")
       end
        
        
        
    end
    
    
    
    describe "#add_entry" do
        it "adds only one entry to the address book" do
            book = AddressBook.new
            book.add_entry('Brian Mont', '201.707.3742', 'briansmont830@gmail.com')
            
            expect(book.entries.size).to eq(1)
        end
        
        it "adds the correct information to entries" do
            book = AddressBook.new
            book.add_entry('Brian Mont', '201.707.3742', 'briansmont830@gmail.com')
            new_entry = book.entries[0]
            
            expect(new_entry.name).to eq('Brian Mont')
            expect(new_entry.phone_number).to eq('201.707.3742')
            expect(new_entry.email).to eq('briansmont830@gmail.com')
        end
    end
end