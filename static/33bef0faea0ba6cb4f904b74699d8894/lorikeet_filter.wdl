version 1.0

task LorikeetFilter {
  input {
    String? bam_files
    String? flags
  }
  command <<<
    lorikeet filter \
      ~{flags} \
      ~{if defined(bam_files) then ("--bam-files " +  '"' + bam_files + '"') else ""}
  >>>
  parameter_meta {
    bam_files: ""
    flags: ""
  }
}