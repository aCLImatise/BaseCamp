version 1.0

task RgiLoad {
  input {
    File? a_file
  }
  command <<<
    rgi_load \
      ~{if defined(a_file) then ("--afile " +  '"' + a_file + '"') else ""}
  >>>
  parameter_meta {
    a_file: "must be a card database json file\\n"
  }
  output {
    File out_stdout = stdout()
  }
}