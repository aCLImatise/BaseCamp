version 1.0

task Simplepbsa {
  input {
    File? is_required
  }
  command <<<
    simplepbsa \
      ~{if defined(is_required) then ("-p " +  '"' + is_required + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    is_required: "is required"
  }
  output {
    File out_stdout = stdout()
  }
}