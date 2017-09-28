
from setuptools import setup

setup(
    name='env2conf',
    version='0.1',
    description='A tool for the config files generation from environment variables',
    author='Shaobo Wu',
    author_email='wushaobo.china@gmail.com',
    platforms='any',
    url='https://github.com/wushaobo/env2conf',
    license='MIT',
    download_url='https://github.com/wushaobo/env2conf/archive/0.1.tar.gz',
    keywords=['config', 'env'],
    scripts=['env2conf'],
    install_requires=[
        'jinja2>=2.4,<3'
    ],
    classifiers=[
        # How mature is this project? Common values are
        #   3 - Alpha
        #   4 - Beta
        #   5 - Production/Stable
        'Development Status :: 3 - Alpha',

        'Intended Audience :: Developers',
        'License :: OSI Approved :: MIT License',
        'Programming Language :: Python :: 2',
        'Programming Language :: Python :: 3',
    ],
)
