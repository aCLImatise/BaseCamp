version 1.0

task AquilaStLFRFastqPreprocess {
  input {
    String? fast_q_one
    String? fast_q_two
    String? out_file
    String use
  }
  command <<<
    Aquila_stLFR_fastq_preprocess \
      ~{use} \
      ~{if defined(fast_q_one) then ("--fastq_1 " +  '"' + fast_q_one + '"') else ""} \
      ~{if defined(fast_q_two) then ("--fastq_2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if defined(out_file) then ("--out_file " +  '"' + out_file + '"') else ""}
  >>>
  parameter_meta {
    fast_q_one: "origin stLFR fastq 1 (gz file)"
    fast_q_two: "origin stLFR fastq 2 (gz file)"
    out_file: "output stLFR fastq file for Aquila_stLFR"
    use: ""
  }
}