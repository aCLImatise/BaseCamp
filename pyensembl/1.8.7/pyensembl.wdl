version 1.0

task Pyensembl {
  input {
    Boolean? overwrite
  }
  command <<<
    pyensembl \
      ~{true="--overwrite" false="" overwrite}
  >>>
  parameter_meta {
    overwrite: "Force download and indexing even if files already exist locally"
  }
}