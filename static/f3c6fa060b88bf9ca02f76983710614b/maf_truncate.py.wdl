version 1.0

task MafTruncatepy {
  input {
    String? cols
  }
  command <<<
    maf_truncate_py \
      ~{if defined(cols) then ("--cols " +  '"' + cols + '"') else ""}
  >>>
  parameter_meta {
    cols: ""
  }
  output {
    File out_stdout = stdout()
  }
}