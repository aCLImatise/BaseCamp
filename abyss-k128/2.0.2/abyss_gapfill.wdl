version 1.0

task Abyssgapfill {
  input {
    Int? min_align
    Boolean? verbose
  }
  command <<<
    abyss_gapfill \
      ~{if defined(min_align) then ("--min-align " +  '"' + min_align + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    min_align: "the minimal alignment size [1]"
    verbose: "display verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}