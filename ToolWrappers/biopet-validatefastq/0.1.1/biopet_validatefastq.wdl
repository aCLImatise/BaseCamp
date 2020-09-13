version 1.0

task Biopetvalidatefastq {
  input {
    String? log_level
    File? fast_q_one
    File? fast_q_two
    String validate_fast_q
  }
  command <<<
    biopet_validatefastq \
      ~{validate_fast_q} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{if defined(fast_q_one) then ("--fastq1 " +  '"' + fast_q_one + '"') else ""} \
      ~{if defined(fast_q_two) then ("--fastq2 " +  '"' + fast_q_two + '"') else ""}
  >>>
  parameter_meta {
    log_level: "Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'"
    fast_q_one: "FASTQ file to be validated. (Required)"
    fast_q_two: "Second FASTQ to be validated if FASTQs are paired. (Optional)"
    validate_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}