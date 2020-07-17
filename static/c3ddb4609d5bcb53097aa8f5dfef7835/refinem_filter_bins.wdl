version 1.0

task RefinemFilterBins {
  input {
    String? genome_ext
    Boolean? modified_only
    Boolean? silent
    String genome_nt_dir
    String filter_file
    String output_dir
  }
  command <<<
    refinem filter_bins \
      ~{genome_nt_dir} \
      ~{filter_file} \
      ~{output_dir} \
      ~{if defined(genome_ext) then ("--genome_ext " +  '"' + genome_ext + '"') else ""} \
      ~{true="--modified_only" false="" modified_only} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    genome_ext: "extension of genomes (other files in directory are ignored) (default: fna)"
    modified_only: "only copy modified bins to the output folder"
    silent: "suppress output of logger"
    genome_nt_dir: "directory containing nucleotide scaffolds for each genome"
    filter_file: "file specifying scaffolds to remove"
    output_dir: "output directory"
  }
}