version 1.0

task RunTHetApy {
  input {
    File? normal_file
    File? tumor_file
  }
  command <<<
    RunTHetA_py \
      ~{if defined(normal_file) then ("--NORMAL_FILE " +  '"' + normal_file + '"') else ""} \
      ~{if defined(tumor_file) then ("--TUMOR_FILE " +  '"' + tumor_file + '"') else ""}
  >>>
  parameter_meta {
    normal_file: ""
    tumor_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}