version 1.0

task DatmaSeq.py {
  input {
    File? file
  }
  command <<<
    datma_seq.py \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    file: "configuration file"
  }
}