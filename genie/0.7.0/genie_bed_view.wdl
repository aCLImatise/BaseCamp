version 1.0

task GenieBedView {
  input {
    String? file_path
    String? flags
  }
  command <<<
    genie bed view \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  parameter_meta {
    file_path: "A bam file (*require)"
    flags: ""
  }
}