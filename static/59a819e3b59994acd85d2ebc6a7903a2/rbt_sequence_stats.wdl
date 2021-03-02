version 1.0

task RbtSequencestats {
  input {
    Boolean? fast_q
  }
  command <<<
    rbt sequence_stats \
      ~{if (fast_q) then "--fastq" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "Flag to indicate the sequence in stdin is in fastq format"
  }
  output {
    File out_stdout = stdout()
  }
}