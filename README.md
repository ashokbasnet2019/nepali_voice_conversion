Requirements: 
* Linux
* Python 3.7
* PyTorch v1.0.1
    pip3 install -r requirements.txt

1. Put Dataset in musicnet at root folder
2. Extract specific domains from dataset: 
   python src/parse_musicnet.py -i musicnet -o musicnet/parsed
   
3. Split into train/test/val 
 
    for d in musicnet/parsed/*/ ; do python src/split_dir.py -i $d -o musicnet/split/$(basename "$d"); done
   
4. Preprocess audio for training
    python src/preprocess.py -i musicnet/split -o musicnet/preprocessed
  
train script:
./train.sh
sample_py.sh <checkpiont name> <decoders ids>
