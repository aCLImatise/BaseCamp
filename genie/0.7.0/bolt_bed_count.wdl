version 1.0

task BoltBedCount {
  input {
    String? file_path
    String genie
    String bed
    String count
    String? flags
  }
  command <<<
    bolt bed count \
      ~{genie} \
      ~{bed} \
      ~{count} \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""}
  >>>
  parameter_meta {
    file_path: "A bam file (*require)"
    genie: ""
    bed: ""
    count: ""
    flags: ""
  }
}