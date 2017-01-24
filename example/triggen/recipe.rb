class TrigGen < Recipe
  description "Trig Generator"

  appliance 'python'
  appliance 'numpy'
  appliance 'scipy'
  appliance 'matplotlib'

  ingredient "nameOfIngredient" do
    ingredient 
  end

  utensil "cosgen.py" do
    attachment "cosggen.py"
  end

  utensil "singen.py" do
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

  entree "all.png"

  demo :DATA
  entree :DATA #????

  def gather
    #super gather
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
    copy 'sin.png', "cos.png", "all.png", "#{table}"
  end
end
__END__
Some logs
Blah Blah
Blah Blah
