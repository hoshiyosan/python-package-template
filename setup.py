import setuptools


def list_requirements():
    with open('requirements') as requirements_file:
        requirements = [
            row.split(';')[0]
            for row in requirements_file.read().split('\n')
            if not row.startswith('#') and not row.startswith('-i') and len(row.strip()) > 0
        ]
    return requirements


setuptools.setup(
    name='example',
    description='example package structure',
    version='0.0.4',
    packages=setuptools.find_packages(),
    install_requires=list_requirements()
)
