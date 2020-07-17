version 1.0

task ConvertMirdeep2Fasta.py {
  input {
    String fast_an
  }
  command <<<
    convert-mirdeep2-fasta.py \
      ~{fast_an}
  >>>
  parameter_meta {
    fast_an: ""
  }
}