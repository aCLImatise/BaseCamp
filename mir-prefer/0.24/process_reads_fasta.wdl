version 1.0

task ProcessReadsFasta.py {
  input {
    String fast_an
  }
  command <<<
    process-reads-fasta.py \
      ~{fast_an}
  >>>
  parameter_meta {
    fast_an: ""
  }
}