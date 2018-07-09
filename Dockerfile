FROM python:2.7

RUN git clone --depth=1 https://github.com/symfony/symfony-docs.git
RUN pip install -r /symfony-docs/_build/.requirements.txt

ENTRYPOINT ["make", "--directory=/symfony-docs/_build", "SPHINXOPTS=-nW -c /symfony-docs/_build", "BUILDDIR=/output"]
