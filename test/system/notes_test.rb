require "application_system_test_case"

class NotesTest < ApplicationSystemTestCase
  setup do
    @note = Note.ordered.first
  end

  test "Our users can view a note" do
    visit notes_path
    click_link @note.name


    assert_selector "h2", text: @note.name
  end

  test "Our users can create a new note" do

    visit notes_path
    assert_selector "h1", text: "Notes"

    click_on "Add New Note"
    fill_in "Name", with: "Pickup groceries."

    assert_selector "h1", text: "Notes"    
    click_on "Create Note"
    
    assert_selector "h1", text: "Notes"
    assert_text "Pickup groceries"
  end  

  test "Our users can edit/update notes" do
    visit notes_path
    assert_selector "h1", text: "Notes"
    
    click_on "Edit Note", match: :first
    fill_in "Name", with: "Pickup groceries and get gas for the car."
    
    assert_selector "h1", text: "Notes"    
    click_on "Update Note"

    assert_selector "h1", text: "Notes"
    assert_text "Pickup groceries and get gas for the car."
  end

  test "Our users can delete notes" do
    visit notes_path
    assert_text @note.name

    click_on "Delete Note", match: :first
    assert_no_text @note.name
  end
end
