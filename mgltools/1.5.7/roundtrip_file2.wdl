version 1.0

task RoundtripFile2 {
  input {
    File? fileFile1
    File? fileFile2
  }
  command <<<
    roundtrip file2 \
      ~{fileFile1} \
      ~{fileFile2}
  >>>
}