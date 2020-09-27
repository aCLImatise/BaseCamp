version 1.0

task Itsxpress {
  input {
    Boolean? outfile
    Int? fast_q_two
    Boolean? single_end
    String? fast_q
  }
  command <<<
    itsxpress \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if defined(fast_q_two) then ("--fastq2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if (single_end) then "--single_end" else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""}
  >>>
  parameter_meta {
    outfile: ""
    fast_q_two: ""
    single_end: ""
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}