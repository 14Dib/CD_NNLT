class SinhVien
  attr_accessor :name, :id, :PToan, :PLy, :PHoa

  def initialize(name, id)
    @name = name
    @id = id
  end

  def set_name(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_id(id)
    @id = id
  end

  def get_id
    @id
  end

  def get_Math(PToan)
    @PToan = PToan
  end

  def get_Physic(PLy)
    @PLy = PLy
  end

  def get_Chemistry(PHoa)
    @PHoa = PHoa
  end

  def C_GPA
    (@PToan + PLy + PHoa) / 3.0
  end

  def display
    puts "Họ tên sinh viên: #{@name}"
    puts "Mã sinh viên: #{@id}"
    puts "Điểm trung bình của sinh viên: #{C_GPA().round(2)}"
  end
end
system("cls")
print "Nhập họ tên sinh viên: "
name = gets.chomp
print "Nhập mã sinh viên: "
id = gets.chomp
std = SinhVien.new(name, id)
print "Nhập điểm toán: "
std.get_Math(gets.chomp.to_i)
print "Nhập điểm lý: "
std.get_Physic(gets.chomp.to_i)
print "Nhập điểm hóa: "
std.get_Chemistry(gets.chomp.to_i)
puts "\n--------\tTHÔNG TIN SINH VIÊN: #{std.get_name}\t--------"
std.display
