version 1.0

task GenerateBatchCmdForCogentReconstructionpy {
  input {
    Int? genome_fast_a_mmi
    String? species_name
  }
  command <<<
    generate_batch_cmd_for_Cogent_reconstruction_py \
      ~{if defined(genome_fast_a_mmi) then ("--genome_fasta_mmi " +  '"' + genome_fast_a_mmi + '"') else ""} \
      ~{if defined(species_name) then ("--species_name " +  '"' + species_name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/md-cogent:8.0.0--pyh3252c3a_0"
  }
  parameter_meta {
    genome_fast_a_mmi: "Optional genome fasta or mmi (ex: genome.fasta or\\ngenome.mmi). If provided, Cogent output will be mapped\\nto the genome using minimap2."
    species_name: "Species name (optional, only used if genome fasta/mmi\\nprovided).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}