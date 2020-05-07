version 1.0

task Estpost.entropyInfile1.hdf5 {
  input {
    String? inInFile2hdf5
  }
  command <<<
    estpost.entropy infile1.hdf5 \
      ~{inInFile2hdf5}
  >>>
}