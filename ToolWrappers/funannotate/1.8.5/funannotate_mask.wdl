version 1.0

task FunannotateMask {
  input {
    Boolean? multifasta_genome_file
    File? out
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
      ~{if (multifasta_genome_file) then "--input" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if (repeatmasker_species) then "--repeatmasker_species" else ""} \
      ~{if (repeat_modeler_lib) then "--repeatmodeler_lib" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/funannotate:1.8.5--pyh3252c3a_0"
  }
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
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}