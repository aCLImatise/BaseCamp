version 1.0

task Bam2nuc {
  input {
    Directory? dir
    File? genome_folder
    Boolean? sam_tools_path
    Directory? genomic_composition_only
  }
  command <<<
    bam2nuc \
      ~{if (dir) then "--dir" else ""} \
      ~{if defined(genome_folder) then ("--genome_folder " +  '"' + genome_folder + '"') else ""} \
      ~{if (sam_tools_path) then "--samtools_path" else ""} \
      ~{if (genomic_composition_only) then "--genomic_composition_only" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dir: "Output directory. Output is written to the current directory if not specified explicitly."
    genome_folder: "Enter the genome folder you wish to use to extract sequences from (full path only). Accepted\\nformats are FastA files ending with '.fa' or '.fasta', or their gzipped versions (ending in .gz).\\nSpecifying a genome folder path is mandatory."
    sam_tools_path: "The path to your Samtools installation, e.g. /home/user/samtools/. Does not need to be specified\\nexplicitly if Samtools is in the PATH already"
    genomic_composition_only: "Only calculate and extract the genomic sequence composition and exit thereafter. This option will\\nattempt to write the genomic composition table 'genomic_nucleotide_frequencies.txt' to the genome\\nfolder or to the output directory instead if that doesn't succeed."
  }
  output {
    File out_stdout = stdout()
    Directory out_dir = "${in_dir}"
    Directory out_genomic_composition_only = "${in_genomic_composition_only}"
  }
}