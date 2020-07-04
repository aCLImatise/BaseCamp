version 1.0

task BoltFastqCount {
  input {
    String? file_path
    String genie
    String fast_q
    String count
    String? flags
  }
  command <<<
    bolt fastq count \
      ~{genie} \
      ~{fast_q} \
      ~{count} \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  parameter_meta {
    file_path: "Input FASTQ file (*require)"
    genie: ""
    fast_q: ""
    count: ""
    flags: ""
  }
}