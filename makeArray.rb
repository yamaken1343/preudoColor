r = []
g = []
b = []
for i in 0..255 do
  if i <= 63 then
    r[i] = 0
    g[i] = 255/64.0 * i
    b[i] = 255
  elsif i<=127 then
    r[i] = 0
    g[i] = 255
    b[i] = 255 - 255/64.0 * (i-63)
  elsif i<=191 then
    r[i] = 255.0/64.0 * (i-128)
    g[i] = 255
    b[i] = 0
  else
    r[i] = 255
    g[i] = 255 - 255/64.0 * (i-191)
    b[i] = 0
  end
end
print("var r =[")
r.each{|i|
print(i.to_i, ", ")
}
print("]\nvar g=[")
g.each{|i|
print(i.to_i, ", ")
}
print("]\nvar b=[")
b.each{|i|
print(i.to_i, ", ")
}
puts("]")
