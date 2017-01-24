# Trigonometry Generator
#
# Blah Blah
# Blah.
class TrigGen < Recipe
  description 'Trig Generator'

  author do
    name 'Kyungmin Lee'
    email 'kyungmin.lee.42@gmail.com'
    affiliation 'Ohio State University'
  end

  pubdate '2017-01-02'

  appliance 'python'
  appliance 'numpy'
  appliance 'scipy'
  appliance 'matplotlib'

  ingredient 'nameOfIngredient' do
    url 'http://github.com/triggen/tan.txt'
    sha256 ''
  end

  utensil 'cosgen.py' do
    attachment 'cosggen.py'
  end

  utensil 'singen.py' do
    content <<-EOS
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

x = np.linspace(0, np.pi, 256+1)
y = np.sin(x)

plt.plot(x,y)
plt.savefig('sin.png', dpi=300)
EOS
  end

  entree 'all.png'

  demo :DATA
  entree :DATA # What should it be????

  def gather
    # super gather
    # (1) kitchen = make temporary directory
    # (2) copy all attached utensils/ingredients to kitchen
    # (3) download all utensils/ingredients to kitchen
  end

  def cook
    # variables:
    # ingredient = {'nameOfIngredient': <Ingredient>, ... }
    #
    # kitchen = '/tmp/trig-gen-jz3f1l32k'
    # table   = '/home/kmlee/databistro/cos-gen
    system 'python', 'singen.py'
    system 'python', 'cosgen.py'
    copy 'sin.png', 'cos.png', 'all.png', table
  end
end
__END__
Some logs
Blah Blah
Blah Blah
