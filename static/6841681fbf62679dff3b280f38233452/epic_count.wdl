version 1.0

task Epiccount {
  input {
    Array[String] in_files
    Int? number_cores
    Boolean? keep_duplicates
    Int? window_size
    Int? fragment_size
    Int? genome
    File? chrom_sizes
    File? file_write_matrix
    String count_reads_create
  }
  command <<<
    epic_count \
      ~{count_reads_create} \
      ~{if defined(in_files) then ("--infiles " +  '"' + in_files + '"') else ""} \
      ~{if defined(number_cores) then ("--number-cores " +  '"' + number_cores + '"') else ""} \
      ~{if (keep_duplicates) then "--keep-duplicates" else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(fragment_size) then ("--fragment-size " +  '"' + fragment_size + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(chrom_sizes) then ("--chromsizes " +  '"' + chrom_sizes + '"') else ""} \
      ~{if defined(file_write_matrix) then ("--outfile " +  '"' + file_write_matrix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_files: "ChIP files to count reads in (bed/bedpe format)."
    number_cores: "Number of cpus to use. Can use at most one per\\nchromosome. Default: 1."
    keep_duplicates: "Keep reads mapping to the same position on the same\\nstrand within a library. Default is to remove all but\\nthe first duplicate."
    window_size: "Size of the windows to scan the genome. WINDOW_SIZE is\\nthe smallest possible island. Default 200."
    fragment_size: "(Single end reads only) Size of the sequenced\\nfragment. The center of the the fragment will be taken\\nas half the fragment size. Default 150."
    genome: "Which genome to analyze. Default: hg19. If\\n--chromsizes flag is given, --genome is not required."
    chrom_sizes: "Set the chromosome lengths yourself in a file with two\\ncolumns: chromosome names and sizes. Useful to analyze\\ncustom genomes, assemblies or simulated data. Only\\nchromosomes included in the file will be analyzed."
    file_write_matrix: "File to write gzipped count matrix to.\\n"
    count_reads_create: "Count reads in windows to create count matrix. (This matrix does not contain"
  }
  output {
    File out_stdout = stdout()
  }
}