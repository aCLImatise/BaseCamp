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
      ~{true="--warnings-as-errors" false="" warnings_as_errors} \
      ~{true="--all-occurrences" false="" all_occurrences}
  >>>
  parameter_meta {
    fast_q: "FASTQ file to be validated."
    warnings_as_errors: "Treat warnings as errors."
    all_occurrences: "Report all occurrences of warnings and errors."
  }
}