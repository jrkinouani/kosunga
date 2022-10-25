require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'shoudl persist a task' do
    task = Task.create(title: "learn english")
    expect(task.title).to eq 'learn english'
  end
end
