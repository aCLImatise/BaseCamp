version 1.0

task Pepxml2csvpy {
  input {
    String in_file
  }
  command <<<
    pepxml2csv_py \
      ~{in_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1"
  }
  parameter_meta {
    in_file: "= sys.argv[1]"
  }
  output {
    File out_stdout = stdout()
  }
}