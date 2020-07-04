version 1.0

task Hal2maf {
  input {
    String hal_file
    String maf_file
  }
  command <<<
    hal2maf \
      ~{hal_file} \
      ~{maf_file}
  >>>
  parameter_meta {
    hal_file: ""
    maf_file: ""
  }
}