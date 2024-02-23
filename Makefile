TAILWIND_INPUT_PATH=./public/assets/tailwind.css
TAILWIND_OUTPUT_PATH=./public/assets/styles_output.css

run:
	air

tailwind-watch:
	tailwindcss -w -i $(TAILWIND_INPUT_PATH) -o $(TAILWIND_OUTPUT_PATH)


