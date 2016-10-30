class CreateOkuribitoRecorderMethodCallLogs < ActiveRecord::Migration
  def change
    create_table :okuribito_recorder_method_call_logs do |t|
      t.string :class_name, null: false
      t.string :method_symbol, null: false
      t.string :method_name, null: false
      t.text :back_trace

      t.timestamps
    end
    add_index :okuribito_recorder_method_call_logs, :class_name
    add_index :okuribito_recorder_method_call_logs, :method_name
  end
end
