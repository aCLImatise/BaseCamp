version 1.0

task Maf2hal {
  input {
    String maf_file
    String hal_file
  }
  command <<<
    maf2hal \
      ~{maf_file} \
      ~{hal_file}
  >>>
  parameter_meta {
    maf_file: ""
    hal_file: ""
  }
}