version 1.0

task LorikeetGenotype {
  input {
    String? bam_files
    String? flags
  }
  command <<<
    lorikeet genotype \
      ~{flags} \
      ~{if defined(bam_files) then ("--bam-files " +  '"' + bam_files + '"') else ""}
  >>>
  parameter_meta {
    bam_files: ""
    flags: ""
  }
}