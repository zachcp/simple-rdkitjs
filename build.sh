
# clone and build
git clone https://github.com/rdkit/rdkit.git

cd rdkit/Code/MininalLib

docker build . -t rdkitjs


# copy built JS/WASM from the docker image
id=$(docker create rdkitjs)
docker cp $id:/src/rdkit/Code/MinimalLib/demo/ .
docker rm -v $id

