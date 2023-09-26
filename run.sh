pip install --upgrade pip
pip install -r requirements.txt

# Lint with flake8
flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics

# Test with pytest
pytest

# Security scan with bandit
bandit -r .

# Code quality scan with radon
radon cc .

# Build Docker image
docker build -t my-python-app .

# Run Docker image
docker run -p 5000:5000 my-python-app
