version 1.0

task LorikeetEvolve {
  input {
    String? bam_files
    String? flags
  }
  command <<<
    lorikeet evolve \
      ~{flags} \
      ~{if defined(bam_files) then ("--bam-files " +  '"' + bam_files + '"') else ""}
  >>>
  parameter_meta {
    bam_files: ""
    flags: ""
  }
}