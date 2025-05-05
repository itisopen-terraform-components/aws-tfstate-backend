-include $(shell curl -sSL -o .build-harness "https://itisopen.net/redirect/build-harness"; echo .build-harness)

all: init readme

test::
	@echo "🚀 Starting tests..."
	./test/run.sh
	@echo "✅ All tests passed."
