version 1.0

task GenieFastqCount {
  input {
    String? file_path
    String? flags
  }
  command <<<
    genie fastq count \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  parameter_meta {
    file_path: "Input FASTQ file (*require)"
    flags: ""
  }
}