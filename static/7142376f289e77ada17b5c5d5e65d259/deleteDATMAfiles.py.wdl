version 1.0

task DeleteDATMAfilespy {
  input {
    File? file
  }
  command <<<
    deleteDATMAfiles_py \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    file: "configuration file"
  }
  output {
    File out_stdout = stdout()
  }
}