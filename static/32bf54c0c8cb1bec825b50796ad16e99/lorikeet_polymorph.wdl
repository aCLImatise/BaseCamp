version 1.0

task LorikeetPolymorph {
  input {
    String? bam_files
    String? flags
  }
  command <<<
    lorikeet polymorph \
      ~{flags} \
      ~{if defined(bam_files) then ("--bam-files " +  '"' + bam_files + '"') else ""}
  >>>
  parameter_meta {
    bam_files: ""
    flags: ""
  }
}