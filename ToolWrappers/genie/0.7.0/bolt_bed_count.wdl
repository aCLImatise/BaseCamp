version 1.0

task BoltBedCount {
  input {
    File? file_path
    String genie
    String bed
    String count
  }
  command <<<
    bolt bed count \
      ~{genie} \
      ~{bed} \
      ~{count} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_path: "A bam file (*require)"
    genie: ""
    bed: ""
    count: ""
  }
  output {
    File out_stdout = stdout()
  }
}