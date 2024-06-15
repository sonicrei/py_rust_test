
# build so
pwd
cd libv1 && cargo clean && cargo build --release && cd ..
cd libv2 && cargo clean && cargo build --release && cd ..

# run py
python main.py


cd libv1 && cargo clean && cd ..
cd libv2 && cargo clean && cd ..
