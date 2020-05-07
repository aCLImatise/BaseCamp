version 1.0

task HtsboxMapchkRef.fa {
  input {
    String? aALnbAm
    String? reReFfa
  }
  command <<<
    htsbox mapchk ref.fa \
      ~{aALnbAm} \
      ~{reReFfa}
  >>>
}