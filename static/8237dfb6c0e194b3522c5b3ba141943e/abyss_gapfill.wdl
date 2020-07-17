version 1.0

task AbyssGapfill {
  input {
    String? min_align
    Boolean? verbose
    String? option
  }
  command <<<
    abyss-gapfill \
      ~{option} \
      ~{if defined(min_align) then ("--min-align " +  '"' + min_align + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    min_align: "the minimal alignment size [1]"
    verbose: "display verbose output"
    option: ""
  }
}