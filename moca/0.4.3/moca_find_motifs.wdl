version 1.0

task MocaFindMotifs {
  input {
    String? bed_file
    String? oc
    String? configuration
    Int? slop_length
    Int? flank_motif
    Int? n_motif
    Int? cores
    String? genome_build
    Boolean? show_progress
  }
  command <<<
    moca find_motifs \
      ~{if defined(bed_file) then ("--bedfile " +  '"' + bed_file + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{if defined(configuration) then ("--configuration " +  '"' + configuration + '"') else ""} \
      ~{if defined(slop_length) then ("--slop-length " +  '"' + slop_length + '"') else ""} \
      ~{if defined(flank_motif) then ("--flank-motif " +  '"' + flank_motif + '"') else ""} \
      ~{if defined(n_motif) then ("--n-motif " +  '"' + n_motif + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(genome_build) then ("--genome-build " +  '"' + genome_build + '"') else ""} \
      ~{true="--show-progress" false="" show_progress}
  >>>
  parameter_meta {
    bed_file: "Bed file input  [required]"
    oc: "Output Directory  [required]"
    configuration: "Configuration file  [required]"
    slop_length: "Flanking sequence length"
    flank_motif: "Length of sequence flanking motif"
    n_motif: "Number of motifs"
    cores: "Number of parallel MEME jobs  [required]"
    genome_build: "Key denoting genome build to use in configuration file  [required]"
    show_progress: "Print progress"
  }
}