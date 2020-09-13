version 1.0

task DatmaSeqpy {
  input {
    File? file
  }
  command <<<
    datma_seq_py \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    file: "configuration file"
  }
  output {
    File out_stdout = stdout()
  }
}