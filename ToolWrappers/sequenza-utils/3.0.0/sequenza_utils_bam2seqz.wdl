version 1.0

task SequenzautilsBam2seqz {
  input {
    Boolean? pile_up
    File? normal
    File? tumor
    File? gc
    File? fast_a
    File? name_use_compression
    Int? normal_two
    Float? hom
    String? het
    Array[String] chromosome
    Int? parallel
    File? sam_tools
    File? tab_ix
    Int? q_limit
    Int? q_format
    Int? threshold_filter_positions
    Float zero_dot_two_five_dot
  }
  command <<<
    sequenza_utils bam2seqz \
      ~{zero_dot_two_five_dot} \
      ~{if (pile_up) then "--pileup" else ""} \
      ~{if defined(normal) then ("--normal " +  '"' + normal + '"') else ""} \
      ~{if defined(tumor) then ("--tumor " +  '"' + tumor + '"') else ""} \
      ~{if defined(gc) then ("-gc " +  '"' + gc + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(name_use_compression) then ("--output " +  '"' + name_use_compression + '"') else ""} \
      ~{if defined(normal_two) then ("--normal2 " +  '"' + normal_two + '"') else ""} \
      ~{if defined(hom) then ("--hom " +  '"' + hom + '"') else ""} \
      ~{if defined(het) then ("--het " +  '"' + het + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""} \
      ~{if defined(tab_ix) then ("--tabix " +  '"' + tab_ix + '"') else ""} \
      ~{if defined(q_limit) then ("--qlimit " +  '"' + q_limit + '"') else ""} \
      ~{if defined(q_format) then ("--qformat " +  '"' + q_format + '"') else ""} \
      ~{if defined(threshold_filter_positions) then ("-N " +  '"' + threshold_filter_positions + '"') else ""}
  >>>
  parameter_meta {
    pile_up: "Use pileups as input files instead of BAMs."
    normal: "Name of the BAM/pileup file from the reference/normal\\nsample"
    tumor: "Name of the BAM/pileup file from the tumor sample"
    gc: "The GC-content wiggle file"
    fast_a: "The reference FASTA file used to generate the\\nintermediate pileup. Required when input are BAM"
    name_use_compression: "Name of the output file. To use gzip compression name\\nthe file ending in .gz. Default STDOUT."
    normal_two: "Optional BAM/pileup file used to compute the\\ndepth.normal and depth-ratio, instead of using the\\nnormal BAM."
    hom: "Threshold to select homozygous positions. Default 0.9."
    het: "Threshold to select heterozygous positions. Default"
    chromosome: "Argument to restrict the input/output to a chromosome\\nor a chromosome region. Coordinate format is\\nName:pos.start-pos.end, eg: chr17:7565097-7590856, for\\na particular region; eg: chr17, for the entire\\nchromosome. Chromosome names can checked in the\\nBAM/pileup files and are depending on the FASTA\\nreference used for alignment. Default behavior is to\\nnot selecting any chromosome."
    parallel: "Defines the number of chromosomes to run in parallel.\\nThe output will be divided in multiple files, one for\\neach chromosome. The file name will be composed by the\\noutput argument (used as prefix) and a chromosome name\\ngiven by the chromosome argument list. This imply that\\nboth output and chromosome argument need to be set\\ncorrectly."
    sam_tools: "Path of samtools exec file to access the indexes and\\ncompute the pileups. Default \\\"samtools\\\""
    tab_ix: "Path of the tabix binary. Default \\\"tabix\\\""
    q_limit: "Minimum nucleotide quality score for inclusion in the\\ncounts. Default 20."
    q_format: "Quality format, options are \\\"sanger\\\" or \\\"illumina\\\".\\nThis will add an offset of 33 or 64 respectively to\\nthe qlimit value. Default \\\"sanger\\\"."
    threshold_filter_positions: "Threshold to filter positions by the sum of read depth\\nof the two samples. Default 20.\\n"
    zero_dot_two_five_dot: "--het_f HET_F         Threshold of frequency in the forward strand to trust"
  }
  output {
    File out_stdout = stdout()
    File out_name_use_compression = "${in_name_use_compression}"
  }
}