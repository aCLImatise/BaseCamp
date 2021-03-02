version 1.0

task RnftoolsValidate {
  input {
    File? fast_q
    Boolean? warnings_as_errors
    Boolean? all_occurrences
  }
  command <<<
    rnftools validate \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if (warnings_as_errors) then "--warnings-as-errors" else ""} \
      ~{if (all_occurrences) then "--all-occurrences" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "FASTQ file to be validated."
    warnings_as_errors: "Treat warnings as errors."
    all_occurrences: "Report all occurrences of warnings and errors.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}