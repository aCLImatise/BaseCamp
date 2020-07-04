version 1.0

task BoltBedView {
  input {
    String? file_path
    String genie
    String bed
    String view
    String? flags
  }
  command <<<
    bolt bed view \
      ~{genie} \
      ~{bed} \
      ~{view} \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  parameter_meta {
    file_path: "A bam file (*require)"
    genie: ""
    bed: ""
    view: ""
    flags: ""
  }
}