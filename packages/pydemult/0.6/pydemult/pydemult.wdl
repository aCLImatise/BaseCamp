version 1.0

task Pydemult {
  input {
    String? sample_sheet
    String? fast_q
  }
  command <<<
    pydemult \
      ~{if defined(sample_sheet) then ("--samplesheet " +  '"' + sample_sheet + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""}
  >>>
  parameter_meta {
    sample_sheet: ""
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}