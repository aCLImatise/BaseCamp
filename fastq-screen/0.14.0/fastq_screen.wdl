version 1.0

task FastqScreen {
  input {
    String? add_genome
    String? aligner
    Boolean? bisulfite
    String? bowtie
    String? bowtie_two
    String? bwa
    File? conf
    String? filter
    Boolean? force
    Boolean? get_genomes
    Boolean? illumina_one_three
    Boolean? inverse
    Boolean? no_hits
    String? outdir
    Int? pass
    Boolean? quiet
    Int? subset
  }
  command <<<
    fastq_screen \
      ~{if defined(add_genome) then ("--add_genome " +  '"' + add_genome + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{true="--bisulfite" false="" bisulfite} \
      ~{if defined(bowtie) then ("--bowtie " +  '"' + bowtie + '"') else ""} \
      ~{if defined(bowtie_two) then ("--bowtie2 " +  '"' + bowtie_two + '"') else ""} \
      ~{if defined(bwa) then ("--bwa " +  '"' + bwa + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--get_genomes" false="" get_genomes} \
      ~{true="--illumina1_3" false="" illumina_one_three} \
      ~{true="--inverse" false="" inverse} \
      ~{true="--nohits" false="" no_hits} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(pass) then ("--pass " +  '"' + pass + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(subset) then ("--subset " +  '"' + subset + '"') else ""}
  >>>
  parameter_meta {
    add_genome: "Edits the file 'fastq_screen.conf' (in the folder where this script is saved) to add a new genome. Specify the  additional genome as a comma separated list: 'Database name','Genome path and basename','Notes'"
    aligner: "Specify the aligner to use for the mapping. Valid  arguments are 'bowtie', bowtie2' (default) or 'bwa'.   Bowtie maps with parameters -k 2, Bowtie 2 with  parameters -k 2 --very-fast-local and BWA with mem -a.   Local aligners such as BWA or Bowtie2 will be better  at detecting the origin of chimeric reads. "
    bisulfite: "Process bisulfite libraries. The path to the  bisulfite aligner (Bismark) may be specified in the  configuration file. Bismark runs in non-directional  mode. Either conventional or bisulfite libraries may be processed, but not both simultaneously. The  --bisulfite option cannot be used in conjunction with  --bwa."
    bowtie: "Specify extra parameters to be passed to Bowtie.  These parameters should be quoted to clearly  delimit bowtie parameters from fastq_screen  parameters. You should not try to use this option  to override the normal search or reporting options  for bowtie which are set automatically but it might  be useful to allow reads to be trimmed before alignment etc."
    bowtie_two: "Specify extra parameters to be passed to Bowtie 2.  These parameters should be quoted to clearly  delimit Bowtie 2 parameters from FastQ Screen  parameters. You should not try to use this option  to override the normal search or reporting options  for bowtie which are set automatically but it might  be useful to allow reads to be trimmed before alignment etc.  "
    bwa: "Specify extra parameters to be passed to BWA.  These parameters should be quoted to clearly  delimit BWA parameters from FastQ Screen  parameters. You should not try to use this option  to override the normal search or reporting options  for BWA which are set automatically but it might  be useful to allow reads to be trimmed before alignment etc. "
    conf: "Manually specify a location for the configuration."
    filter: "Produce a FASTQ file containing reads mapping to  specified genomes. Pass the argument a string of characters (0, 1, 2, 3, -), in which each character  corresponds to a reference genome (in the order the  reference genome occurs in the configuration file).   Below gives an explanation of each character.              0: Read does not map 1: Read maps uniquely 2: Read multi-maps 3: Read maps (one or more times) 4: Passes filter 0 or filter 1 5: Passes filter 0 or filter 2 -: Do not apply filter to this genome Consider mapping to three genomes (A, B and C), the  string '003' produces a file in which reads do not  map to genomes A or B, but map (once or more) to  genome C.  The string '--1' would generate a file in  which reads uniquely map to genome C. Whether reads  map to genome A or B would be ignored. A read needs to pass all the genome filters to be considered valid (unless --pass specified). When --filter is used in conjuction with --tag, FASTQ files shall be mapped, tagged and then filtered. If the --tag option is not selected however, the input  FASTQ file should have been previously tagged."
    force: "Do not terminate if output files already exist, instead overwrite the files."
    get_genomes: "Download pre-indexed Bowtie2 genomes for a range of commonly studied species and sequences. If used with --bisulfite, Bismark bisulfite Bowtie2 indices will be downloaded instead.                                      "
    illumina_one_three: "Assume that the quality values are in encoded in Illumina v1.3 format. Defaults to Sanger format if this flag is not specified."
    inverse: "Inverts the --filter results i.e. reads that pass the --filter parameter will not pass when  --filter --inverse are specified together, and vice versa.                                      "
    no_hits: "Writes to a file the sequences that did not map to  any of the specified genomes. This option is  equivalent to specifying --tag --filter 0000 (number of zeros corresponds to the number of genomes screened).  By default the whole input file will be mapped, unless overridden by --subset.                            "
    outdir: "Specify a directory in which to save output files. If no directory is specified then output files are saved in the current working directory."
    pass: "Used in conjunction with --filter. By default all genome filters must be passed for a read to pass the --filter option.  However, a minimum number  of genome filters may be specified that a read needs pass to be considered to pass the --filter option. (--pass 1 effecitively acts as an OR boolean operator for the genome filters.)                                   "
    quiet: "Suppress all progress reports on stderr and only report errors."
    subset: "Don't use the whole sequence file, but create a  temporary dataset of this specified number of  reads. The dataset created will be of  approximately (within a factor of 2) of this size.  If the real dataset is smaller than twice the  specified size then the whole dataset will be used.  Subsets will be taken evenly from throughout the  whole original dataset. By Default FastQ Screen  runs with this parameter set to 100000. To process an entire dataset however, adjust --subset to 0."
  }
}