version 1.0

task FastqScreen {
  input {
    File? add_genome
    Int? aligner
    Boolean? bisulfite
    String? bowtie
    Int? bowtie_two
    String? bwa
    File? conf
    File? filter
    Boolean? force
    Boolean? get_genomes
    Boolean? illumina_one_three
    Boolean? inverse
    Boolean? no_hits
    Directory? outdir
    Int? pass
    Boolean? quiet
    Int? subset
    File? tag
    Int? threads
    Int? top
  }
  command <<<
    fastq_screen \
      ~{if defined(add_genome) then ("--add_genome " +  '"' + add_genome + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if (bisulfite) then "--bisulfite" else ""} \
      ~{if defined(bowtie) then ("--bowtie " +  '"' + bowtie + '"') else ""} \
      ~{if defined(bowtie_two) then ("--bowtie2 " +  '"' + bowtie_two + '"') else ""} \
      ~{if defined(bwa) then ("--bwa " +  '"' + bwa + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (get_genomes) then "--get_genomes" else ""} \
      ~{if (illumina_one_three) then "--illumina1_3" else ""} \
      ~{if (inverse) then "--inverse" else ""} \
      ~{if (no_hits) then "--nohits" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(pass) then ("--pass " +  '"' + pass + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(subset) then ("--subset " +  '"' + subset + '"') else ""} \
      ~{if (tag) then "--tag" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""}
  >>>
  parameter_meta {
    add_genome: "Edits the file 'fastq_screen.conf' (in the folder where\\nthis script is saved) to add a new genome. Specify the\\nadditional genome as a comma separated list:\\n'Database name','Genome path and basename','Notes'"
    aligner: "Specify the aligner to use for the mapping. Valid\\narguments are 'bowtie', bowtie2' (default) or 'bwa'.\\nBowtie maps with parameters -k 2, Bowtie 2 with\\nparameters -k 2 --very-fast-local and BWA with mem -a.\\nLocal aligners such as BWA or Bowtie2 will be better\\nat detecting the origin of chimeric reads."
    bisulfite: "Process bisulfite libraries. The path to the\\nbisulfite aligner (Bismark) may be specified in the\\nconfiguration file. Bismark runs in non-directional\\nmode. Either conventional or bisulfite libraries may\\nbe processed, but not both simultaneously. The\\n--bisulfite option cannot be used in conjunction with\\n--bwa."
    bowtie: "Specify extra parameters to be passed to Bowtie.\\nThese parameters should be quoted to clearly\\ndelimit bowtie parameters from fastq_screen\\nparameters. You should not try to use this option\\nto override the normal search or reporting options\\nfor bowtie which are set automatically but it might\\nbe useful to allow reads to be trimmed before\\nalignment etc."
    bowtie_two: "Specify extra parameters to be passed to Bowtie 2.\\nThese parameters should be quoted to clearly\\ndelimit Bowtie 2 parameters from FastQ Screen\\nparameters. You should not try to use this option\\nto override the normal search or reporting options\\nfor bowtie which are set automatically but it might\\nbe useful to allow reads to be trimmed before\\nalignment etc."
    bwa: "Specify extra parameters to be passed to BWA.\\nThese parameters should be quoted to clearly\\ndelimit BWA parameters from FastQ Screen\\nparameters. You should not try to use this option\\nto override the normal search or reporting options\\nfor BWA which are set automatically but it might\\nbe useful to allow reads to be trimmed before\\nalignment etc."
    conf: "Manually specify a location for the configuration."
    filter: "Produce a FASTQ file containing reads mapping to\\nspecified genomes. Pass the argument a string of\\ncharacters (0, 1, 2, 3, -), in which each character\\ncorresponds to a reference genome (in the order the\\nreference genome occurs in the configuration file).\\nBelow gives an explanation of each character.\\n0: Read does not map\\n1: Read maps uniquely\\n2: Read multi-maps\\n3: Read maps (one or more times)\\n4: Passes filter 0 or filter 1\\n5: Passes filter 0 or filter 2\\n-: Do not apply filter to this genome\\nConsider mapping to three genomes (A, B and C), the\\nstring '003' produces a file in which reads do not\\nmap to genomes A or B, but map (once or more) to\\ngenome C.  The string '--1' would generate a file in\\nwhich reads uniquely map to genome C. Whether reads\\nmap to genome A or B would be ignored.\\nA read needs to pass all the genome filters to be\\nconsidered valid (unless --pass specified).\\nWhen --filter is used in conjuction with --tag, FASTQ\\nfiles shall be mapped, tagged and then filtered. If\\nthe --tag option is not selected however, the input\\nFASTQ file should have been previously tagged."
    force: "Do not terminate if output files already exist,\\ninstead overwrite the files."
    get_genomes: "Download pre-indexed Bowtie2 genomes for a range of\\ncommonly studied species and sequences. If used with\\n--bisulfite, Bismark bisulfite Bowtie2 indices will\\nbe downloaded instead."
    illumina_one_three: "Assume that the quality values are in encoded in\\nIllumina v1.3 format. Defaults to Sanger format\\nif this flag is not specified."
    inverse: "Inverts the --filter results i.e. reads that pass\\nthe --filter parameter will not pass when\\n--filter --inverse are specified together, and vice\\nversa."
    no_hits: "Writes to a file the sequences that did not map to\\nany of the specified genomes. This option is\\nequivalent to specifying --tag --filter 0000 (number\\nof zeros corresponds to the number of genomes\\nscreened).  By default the whole input file will be\\nmapped, unless overridden by --subset."
    outdir: "Specify a directory in which to save output files.\\nIf no directory is specified then output files\\nare saved in the current working directory."
    pass: "Used in conjunction with --filter. By default all\\ngenome filters must be passed for a read to pass\\nthe --filter option.  However, a minimum number\\nof genome filters may be specified that a read\\nneeds pass to be considered to pass the --filter\\noption. (--pass 1 effecitively acts as an OR\\nboolean operator for the genome filters.)"
    quiet: "Suppress all progress reports on stderr and only\\nreport errors."
    subset: "Don't use the whole sequence file, but create a\\ntemporary dataset of this specified number of\\nreads. The dataset created will be of\\napproximately (within a factor of 2) of this size.\\nIf the real dataset is smaller than twice the\\nspecified size then the whole dataset will be used.\\nSubsets will be taken evenly from throughout the\\nwhole original dataset. By Default FastQ Screen\\nruns with this parameter set to 100000. To process\\nan entire dataset however, adjust --subset to 0."
    tag: "Label each FASTQ read header with a tag listing to\\nwhich genomes the read did, or did not align. The\\nfirst read in the output FASTQ file will list the\\nfull genome names along with a score denoting\\nwhether the read did not align (0), aligned\\nuniquely to the specified genome (1), or aligned\\nmore than once (2). In subsequent reads the\\ngenome names are omitted and only the score is\\nprinted, in the same order as the first line.\\nThis option results in the he whole file being\\nprocessed unless overridden explicitly by the user\\nwith the --subset parameter"
    threads: "Specify across how many threads bowtie will be\\nallowed to run. Overrides the default value set\\nin the configuration file"
    top: "/<int,int> Don't use the whole sequence file, but create a\\ntemporary dataset of the specified number of\\nreads taken from the top of the original file. It is\\nalso possible to specify the number of lines to skip\\nbefore beginning the selection e.g.\\n--top 100000,5000000 skips the first five million\\nreads and selects the subsequent one hundred thousand\\nreads. While this option is usually faster than\\ncomparable --subset operations, it does not prevent\\nbiases arising from non-uniform distribution of\\nreads in the original FastQ file. This option should\\nonly be used when minimising processing time is of\\nhighest priority."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_tag = "${in_tag}"
  }
}