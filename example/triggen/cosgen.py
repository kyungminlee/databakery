import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

x = np.linspace(0, np.pi, 256+1)
y = np.cos(x)

plt.plot(x,y)
plt.savefig('cos.png', dpi=300)
