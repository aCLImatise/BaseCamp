version 1.0

task DeleteDATMAfiles.py {
  input {
    File? file
  }
  command <<<
    deleteDATMAfiles.py \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    file: "configuration file"
  }
}