version 1.0

task Pydemult {
  input {
    String? fast_q
    String? sample_sheet
  }
  command <<<
    pydemult \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(sample_sheet) then ("--samplesheet " +  '"' + sample_sheet + '"') else ""}
  >>>
  parameter_meta {
    fast_q: ""
    sample_sheet: ""
  }
}