version 1.0

task EpicCount {
  input {
    Array[String] in_files
    String? number_cores
    Boolean? keep_duplicates
    String? window_size
    String? fragment_size
    String? genome
    String? chrom_sizes
    String? outfile
  }
  command <<<
    epic-count \
      ~{if defined(in_files) then ("--infiles " +  '"' + in_files + '"') else ""} \
      ~{if defined(number_cores) then ("--number-cores " +  '"' + number_cores + '"') else ""} \
      ~{true="--keep-duplicates" false="" keep_duplicates} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(fragment_size) then ("--fragment-size " +  '"' + fragment_size + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(chrom_sizes) then ("--chromsizes " +  '"' + chrom_sizes + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    in_files: "ChIP files to count reads in (bed/bedpe format)."
    number_cores: "Number of cpus to use. Can use at most one per chromosome. Default: 1."
    keep_duplicates: "Keep reads mapping to the same position on the same strand within a library. Default is to remove all but the first duplicate."
    window_size: "Size of the windows to scan the genome. WINDOW_SIZE is the smallest possible island. Default 200."
    fragment_size: "(Single end reads only) Size of the sequenced fragment. The center of the the fragment will be taken as half the fragment size. Default 150."
    genome: "Which genome to analyze. Default: hg19. If --chromsizes flag is given, --genome is not required."
    chrom_sizes: "Set the chromosome lengths yourself in a file with two columns: chromosome names and sizes. Useful to analyze custom genomes, assemblies or simulated data. Only chromosomes included in the file will be analyzed."
    outfile: "File to write gzipped count matrix to."
  }
}