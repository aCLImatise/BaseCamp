version 1.0

task Bam2nuc {
  input {
    File? genome_folder
  }
  command <<<
    bam2nuc \
      ~{if defined(genome_folder) then ("--genome_folder " +  '"' + genome_folder + '"') else ""}
  >>>
  parameter_meta {
    genome_folder: ""
  }
}