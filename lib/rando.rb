# frozen_string_literal: true

# Rando
class Rando
  def rando(*args)
    # puts "args = #{args}"

    execute(args, false)
  end

  def rando_sequence(*args)
    # puts "args = #{args}"

    execute(args, true)
  end

  private

  def execute(args, with_sequence)
    result = rand(0..1).to_f

    if !args.nil? && !args.empty?
      case args.length
      when 1
        item = args[0]
        result = args_length1(item, with_sequence)
      when 2
        item = args[0]
        item2 = args[1]
        result = args_length2(item, item2, with_sequence)
      when 3
        item = args[0]
        item2 = args[1]
        item3 = args[2]
        result = args_length3(item, item2, item3, with_sequence)
      end
    end

    result
  end

  def args_length1(item, with_sequence)
    result = nil

    if !item.nil?
      if item.instance_of?(Integer)
        if !with_sequence
          result = rand(0..item)
        else
          num_list = (0..item).map do |number|
            number
          end
          random_num_list = num_list.shuffle
          result = random_num_list
        end
      elsif item.instance_of?(Array)
        if !with_sequence
          random_item = item.sample

          index = item.index(random_item)
          value = item[index]

          result = { index: index, value: value }
        else
          item_list = item.map.with_index do |value, i|
            {
              index: i,
              value: value
            }
          end
          random_item_list = item_list.shuffle
          result = random_item_list
        end
      elsif item.instance_of?(Hash)
        if !with_sequence
          key = item.keys.sample
          value = item[key]
          result = { key: key, value: value }
        else
          hash_list = []
          item.each do |key, value|
            data = {
              key: key,
              value: value
            }
            hash_list.push(data)
          end
          random_hash_list = hash_list.shuffle
          result = random_hash_list
        end
      elsif item.instance_of?(String)
        if !item.nil? && !item.empty?
          chars_list = item.split('')

          if !with_sequence
            result = chars_list.sample
          else
            random_chars_list = chars_list.shuffle
            result = random_chars_list
          end
        else
          result = false
        end
      end
    else
      result = false
    end

    result
  end

  def args_length2(item, item2, with_sequence)
    result = nil

    boolean_list = [true, false]

    if item.instance_of?(Integer)
      if item2.instance_of?(Integer)
        if !with_sequence
          result = rand(item..item2)
        else
          num_list = (item..item2).map do |number|
            number
          end
          random_num_list = num_list.shuffle
          result = random_num_list
        end
      end

      result = rand(0..item).to_f if item2.instance_of?(String) && item2 == 'float'
    elsif boolean_list.include?(item) && boolean_list.include?(item2)
      result = boolean_list.sample
    end

    result
  end

  def args_length3(item, item2, item3, _with_sequence)
    result = nil

    if item.instance_of?(Integer) && item2.instance_of?(Integer) && item3.instance_of?(String) && (item3 == 'float')
      result = rand(item..item2).to_f
    end

    result
  end
end
