version 1.0

task FunannotateMask {
  input {
    Boolean? multifasta_genome_file
    Boolean? out
    Boolean? method
    Boolean? repeatmasker_species
    Boolean? repeat_modeler_lib
    Boolean? cpus
    Boolean? debug
    String arguments
  }
  command <<<
    funannotate mask \
      ~{arguments} \
      ~{true="--input" false="" multifasta_genome_file} \
      ~{true="--out" false="" out} \
      ~{true="--method" false="" method} \
      ~{true="--repeatmasker_species" false="" repeatmasker_species} \
      ~{true="--repeatmodeler_lib" false="" repeat_modeler_lib} \
      ~{true="--cpus" false="" cpus} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    multifasta_genome_file: "Multi-FASTA genome file. (Required)"
    out: "Output softmasked FASTA file. (Required)"
    method: "Method to use. Default: tantan [repeatmasker, repeatmodeler]"
    repeatmasker_species: "Species to use for RepeatMasker"
    repeat_modeler_lib: "Custom repeat database (FASTA format)"
    cpus: "Number of cpus to use. Default: 2"
    debug: "Keep intermediate files"
    arguments: ""
  }
}