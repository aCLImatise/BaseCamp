version 1.0

task Amosvalidate {
  input {
    Int? use_clear_range
  }
  command <<<
    amosvalidate \
      ~{if defined(use_clear_range) then ("-D " +  '"' + use_clear_range + '"') else ""}
  >>>
  parameter_meta {
    use_clear_range: "=<n>   Use the clear range of the reads? (0:no 1:yes,\\ndefault: 1)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}