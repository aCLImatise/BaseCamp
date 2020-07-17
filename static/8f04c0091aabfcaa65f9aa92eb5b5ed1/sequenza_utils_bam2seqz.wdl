version 1.0

task SequenzaUtilsBam2seqz {
  input {
    Boolean? pile_up
    String? normal
    String? tumor
    String? gc
    String? fast_a
    String? name_output_file
    String? normal_two
    String? hom
    String? het
    String? het_f
    Array[String] chromosome
    String? parallel
    String? sam_tools
    String? tab_ix
    String? q_limit
    String? q_format
    String? threshold_filter_positions
  }
  command <<<
    sequenza-utils bam2seqz \
      ~{true="--pileup" false="" pile_up} \
      ~{if defined(normal) then ("--normal " +  '"' + normal + '"') else ""} \
      ~{if defined(tumor) then ("--tumor " +  '"' + tumor + '"') else ""} \
      ~{if defined(gc) then ("-gc " +  '"' + gc + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(normal_two) then ("--normal2 " +  '"' + normal_two + '"') else ""} \
      ~{if defined(hom) then ("--hom " +  '"' + hom + '"') else ""} \
      ~{if defined(het) then ("--het " +  '"' + het + '"') else ""} \
      ~{if defined(het_f) then ("--het_f " +  '"' + het_f + '"') else ""} \
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
    normal: "Name of the BAM/pileup file from the reference/normal sample"
    tumor: "Name of the BAM/pileup file from the tumor sample"
    gc: "The GC-content wiggle file"
    fast_a: "The reference FASTA file used to generate the intermediate pileup. Required when input are BAM"
    name_output_file: "Name of the output file. To use gzip compression name the file ending in .gz. Default STDOUT."
    normal_two: "Optional BAM/pileup file used to compute the depth.normal and depth-ratio, instead of using the normal BAM."
    hom: "Threshold to select homozygous positions. Default 0.9."
    het: "Threshold to select heterozygous positions. Default 0.25."
    het_f: "Threshold of frequency in the forward strand to trust heterozygous calls. Default -0.2 (Disabled, effective with values >= 0)."
    chromosome: "Argument to restrict the input/output to a chromosome or a chromosome region. Coordinate format is Name:pos.start-pos.end, eg: chr17:7565097-7590856, for a particular region; eg: chr17, for the entire chromosome. Chromosome names can checked in the BAM/pileup files and are depending on the FASTA reference used for alignment. Default behavior is to not selecting any chromosome."
    parallel: "Defines the number of chromosomes to run in parallel. The output will be divided in multiple files, one for each chromosome. The file name will be composed by the output argument (used as prefix) and a chromosome name given by the chromosome argument list. This imply that both output and chromosome argument need to be set correctly."
    sam_tools: "Path of samtools exec file to access the indexes and compute the pileups. Default \"samtools\""
    tab_ix: "Path of the tabix binary. Default \"tabix\""
    q_limit: "Minimum nucleotide quality score for inclusion in the counts. Default 20."
    q_format: "Quality format, options are \"sanger\" or \"illumina\". This will add an offset of 33 or 64 respectively to the qlimit value. Default \"sanger\"."
    threshold_filter_positions: "Threshold to filter positions by the sum of read depth of the two samples. Default 20."
  }
}