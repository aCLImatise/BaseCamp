version 1.0

task GenieBedCount {
  input {
    String? file_path
    String? flags
  }
  command <<<
    genie bed count \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  parameter_meta {
    file_path: "A bam file (*require)"
    flags: ""
  }
}