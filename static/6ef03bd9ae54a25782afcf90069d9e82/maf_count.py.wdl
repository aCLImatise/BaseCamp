version 1.0

task MafCountpy {
  input {
    Boolean? cols
    Boolean? each
    File ref__refref
  }
  command <<<
    maf_count_py \
      ~{ref__refref} \
      ~{if (cols) then "--cols" else ""} \
      ~{if (each) then "--each" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cols: "count alignment columns rather than number of"
    each: "print a count for each alignment rather than whole"
    ref__refref: "-r REF, --ref=REF     reference sequence (first by default, 0..n)"
  }
  output {
    File out_stdout = stdout()
  }
}