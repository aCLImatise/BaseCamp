version 1.0

task RefinemFilterBins {
  input {
    Directory? genome_ext
    Directory? modified_only
    Boolean? silent
    String genome_nt_dir
    String genome
    String output_dir
  }
  command <<<
    refinem filter_bins \
      ~{genome_nt_dir} \
      ~{genome} \
      ~{output_dir} \
      ~{if defined(genome_ext) then ("--genome_ext " +  '"' + genome_ext + '"') else ""} \
      ~{if (modified_only) then "--modified_only" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome_ext: "extension of genomes (other files in directory are\\nignored) (default: fna)"
    modified_only: "only copy modified bins to the output folder"
    silent: "suppress output of logger"
    genome_nt_dir: "directory containing nucleotide scaffolds for each"
    genome: "filter_file           file specifying scaffolds to remove"
    output_dir: "output directory"
  }
  output {
    File out_stdout = stdout()
    Directory out_modified_only = "${in_modified_only}"
  }
}