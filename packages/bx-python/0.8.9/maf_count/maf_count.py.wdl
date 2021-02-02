version 1.0

task MafCountpy {
  input {
    Boolean? cols
    Boolean? each
    File file
  }
  command <<<
    maf_count_py \
      ~{file} \
      ~{if (cols) then "--cols" else ""} \
      ~{if (each) then "--each" else ""}
  >>>
  parameter_meta {
    cols: "count alignment columns rather than number of"
    each: "print a count for each alignment rather than whole"
    file: "-r REF, --ref=REF     reference sequence (first by default, 0..n)"
  }
  output {
    File out_stdout = stdout()
  }
}