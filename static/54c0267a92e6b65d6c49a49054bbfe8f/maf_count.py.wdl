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
    docker: "quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0"
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