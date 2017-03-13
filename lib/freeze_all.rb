require "freeze_all/version"

module FreezeAll
  def freeze_all
    if is_a?(Array)
      each(&:freeze).freeze
    elsif is_a?(Hash)
      each do |key, val|
        key.freeze
        val.freeze
      end
      freeze
    else
    end
  end
end

Array.include FreezeAll
Hash.include FreezeAll