version 1.0

task Hic2coolExtractnorms {
  input {
    Boolean? exclude_mt
    Boolean? silent
    Boolean? warnings
  }
  command <<<
    hic2cool extract_norms \
      ~{if (exclude_mt) then "--exclude-mt" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (warnings) then "--warnings" else ""}
  >>>
  parameter_meta {
    exclude_mt: "if used, exclude the mitochondria (MT) from the output"
    silent: "if used, silence standard program output"
    warnings: "if used, print out non-critical WARNING messages, which\\nare hidden by default. Silent mode takes precedence over\\nthis\\n"
  }
  output {
    File out_stdout = stdout()
  }
}