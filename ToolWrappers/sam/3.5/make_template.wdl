version 1.0

task MakeTemplate {
  input {
    File? align_file
    String? option
    String run_name
  }
  command <<<
    make_template \
      ~{run_name} \
      ~{if defined(align_file) then ("-alignfile " +  '"' + align_file + '"') else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    align_file: ": Aligned sequences to read."
    option: ""
    run_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}