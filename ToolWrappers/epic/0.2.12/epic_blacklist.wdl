version 1.0

task Epicblacklist {
  input {
    File? outfile
    Array[String] in_files
    Int? number_cores
    Boolean? keep_duplicates
    Int? window_size
    Int? fragment_size
    Int? genome
    File? chrom_sizes
    Float? bonferroni
    Int? effective_genome_fraction
  }
  command <<<
    epic_blacklist \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(in_files) then ("--infiles " +  '"' + in_files + '"') else ""} \
      ~{if defined(number_cores) then ("--number-cores " +  '"' + number_cores + '"') else ""} \
      ~{if (keep_duplicates) then "--keep-duplicates" else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(fragment_size) then ("--fragment-size " +  '"' + fragment_size + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(chrom_sizes) then ("--chromsizes " +  '"' + chrom_sizes + '"') else ""} \
      ~{if defined(bonferroni) then ("--bonferroni " +  '"' + bonferroni + '"') else ""} \
      ~{if defined(effective_genome_fraction) then ("--effective-genome-fraction " +  '"' + effective_genome_fraction + '"') else ""}
  >>>
  parameter_meta {
    outfile: "File to write gzipped count matrix to.\\n"
    in_files: "ChIP files to count reads in (bed/bedpe format)."
    number_cores: "Number of cpus to use. Can use at most one per\\nchromosome. Default: 1."
    keep_duplicates: "Keep reads mapping to the same position on the same\\nstrand within a library. Default is to remove all but\\nthe first duplicate."
    window_size: "Size of the windows to scan the genome. WINDOW_SIZE is\\nthe smallest possible island. Default 200."
    fragment_size: "(Single end reads only) Size of the sequenced\\nfragment. The center of the the fragment will be taken\\nas half the fragment size. Default 150."
    genome: "Which genome to analyze. Default: hg19. If\\n--chromsizes flag is given, --genome is not required."
    chrom_sizes: "Set the chromosome lengths yourself in a file with two\\ncolumns: chromosome names and sizes. Useful to analyze\\ncustom genomes, assemblies or simulated data. Only\\nchromosomes included in the file will be analyzed."
    bonferroni: "The bonferroni-value to consider a bin having too many\\nreads in it (Default: 0.05)."
    effective_genome_fraction: "Use a different effective genome fraction than the one\\nincluded in epic. The default value depends on the\\ngenome and readlength, but is a number between 0 and\\n1."
  }
  output {
    File out_stdout = stdout()
  }
}