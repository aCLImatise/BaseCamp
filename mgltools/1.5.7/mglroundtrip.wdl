version 1.0

task Mglroundtrip {
  input {
    String? roundRoundTrip
    File? fileFile1
    File? fileFile2
  }
  command <<<
    mglroundtrip \
      ~{roundRoundTrip} \
      ~{fileFile1} \
      ~{fileFile2}
  >>>
}