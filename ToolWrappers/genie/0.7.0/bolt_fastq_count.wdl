version 1.0

task BoltFastqCount {
  input {
    File? file_path
    String genie
    String fast_q
    String count
  }
  command <<<
    bolt fastq count \
      ~{genie} \
      ~{fast_q} \
      ~{count} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_path: "Input FASTQ file (*require)"
    genie: ""
    fast_q: ""
    count: ""
  }
  output {
    File out_stdout = stdout()
  }
}