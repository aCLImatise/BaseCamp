version 1.0

task Bodypl {
  input {
    Boolean? include_blank_lines
    Boolean? skip
    Boolean? select
  }
  command <<<
    body_pl \
      ~{if (include_blank_lines) then "-b" else ""} \
      ~{if (skip) then "-skip" else ""} \
      ~{if (select) then "-select" else ""}
  >>>
  parameter_meta {
    include_blank_lines: ": Do *not* include blank lines when counting (default counts them)."
    skip: "<n1,n2...>: Exclude line numbers n1,n2..."
    select: "<n1,n2>:  Select line numbers n1,n2..."
  }
  output {
    File out_stdout = stdout()
  }
}