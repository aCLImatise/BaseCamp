version 1.0

task RoundtripFile1 {
  input {
    File? fileFile2
  }
  command <<<
    roundtrip file1 \
      ~{fileFile2}
  >>>
}