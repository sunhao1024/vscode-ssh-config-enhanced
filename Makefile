env_npm:
	@echo "Setting up npm environment..."
	@sudo apt install -y node npm
	@sudo npm i vsce -g
	@echo "npm environment setup complete."

build_prepare:
	@echo "Preparing build environment..."
	@npm install
	@echo "Build environment prepared."

build:
	@echo "Building the project..."
	@vsce package
	@echo "Build complete."
