version 1.0

task Ezclermont {
  input {
    Int? min_length
    String? experiment_name
    Boolean? no_partial
    String contigs
  }
  command <<<
    ezclermont \
      ~{contigs} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(experiment_name) then ("--experiment_name " +  '"' + experiment_name + '"') else ""} \
      ~{true="--no_partial" false="" no_partial}
  >>>
  parameter_meta {
    min_length: "minimum contig length to consider.default: 500"
    experiment_name: "name of experiment; defaults to file name without extension. If reading from stdin, uses the first contig's ID"
    no_partial: "If scanning contigs, breaks between contigs could potentially contain your sequence of interest. if --no_partial, these plausible partial matches will NOT be reported; default behaviour is to consider partial hits if the assembly has more than 4 sequnces(ie, no partial matches for complete genomes, allowing for 1 chromasome and several plasmids)"
    contigs: "FASTA formatted genome or set of contigs. If reading from stdin, use '-'"
  }
}