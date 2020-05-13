version 1.0

task Estpost.entropyInfile2.hdf5 {
  input {
    String? inInFile1hdf5
    String? inInFile2hdf5
  }
  command <<<
    estpost.entropy infile2.hdf5 \
      ~{inInFile1hdf5} \
      ~{inInFile2hdf5}
  >>>
}