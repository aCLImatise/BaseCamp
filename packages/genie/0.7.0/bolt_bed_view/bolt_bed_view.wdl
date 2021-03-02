version 1.0

task BoltBedView {
  input {
    File? file_path
    String genie
    String bed
    String view
  }
  command <<<
    bolt bed view \
      ~{genie} \
      ~{bed} \
      ~{view} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_path: "A bam file (*require)"
    genie: ""
    bed: ""
    view: ""
  }
  output {
    File out_stdout = stdout()
  }
}