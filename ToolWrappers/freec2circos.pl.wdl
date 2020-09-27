version 1.0

task Freec2circospl {
  input {
    Boolean? file_file_ratio
    Boolean? ploidy_ploidy_default
    Boolean? verbose_mode
  }
  command <<<
    freec2circos_pl \
      ~{if (file_file_ratio) then "-f" else ""} \
      ~{if (ploidy_ploidy_default) then "-p" else ""} \
      ~{if (verbose_mode) then "-v" else ""}
  >>>
  parameter_meta {
    file_file_ratio: "file                   file with ratio"
    ploidy_ploidy_default: "ploidy                 ploidy (default 2)"
    verbose_mode: "verbose mode"
  }
  output {
    File out_stdout = stdout()
  }
}