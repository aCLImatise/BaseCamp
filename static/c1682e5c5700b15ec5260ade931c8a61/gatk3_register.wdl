version 1.0

task Gatk3Register {
  input {
    Boolean? multiple
    String? suffix
    Boolean? end_output_line
  }
  command <<<
    gatk3-register \
      ~{true="--multiple" false="" multiple} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{true="--zero" false="" end_output_line}
  >>>
  parameter_meta {
    multiple: "support multiple arguments and treat each as a NAME"
    suffix: "remove a trailing SUFFIX; implies -a"
    end_output_line: "end each output line with NUL, not newline"
  }
}