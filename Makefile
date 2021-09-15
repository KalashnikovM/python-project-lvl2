install:
	poetry install

gendiff:
	poetry run gendiff

build:
	poetry build

publish:
	poetry publish

package-install:
	python3 -m pip install --user dist/*.whl

package-reinstall:
	python3 -m pip install --user --force-reinstall dist/*.whl

lint:
	poetry run flake8 brain_games

install-all:
	poetry install
	poetry build
	poetry publish --dry-run
	python3 -m pip install --user --force-reinstall dist/*.whl
	poetry run flake8 gendiff