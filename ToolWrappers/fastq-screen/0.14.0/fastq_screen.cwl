class: CommandLineTool
id: fastq_screen.cwl
inputs:
- id: in_add_genome
  doc: "Edits the file 'fastq_screen.conf' (in the folder where\nthis script is saved)\
    \ to add a new genome. Specify the\nadditional genome as a comma separated list:\n\
    'Database name','Genome path and basename','Notes'"
  type: File
  inputBinding:
    prefix: --add_genome
- id: in_aligner
  doc: "Specify the aligner to use for the mapping. Valid\narguments are 'bowtie',\
    \ bowtie2' (default) or 'bwa'.\nBowtie maps with parameters -k 2, Bowtie 2 with\n\
    parameters -k 2 --very-fast-local and BWA with mem -a.\nLocal aligners such as\
    \ BWA or Bowtie2 will be better\nat detecting the origin of chimeric reads."
  type: long
  inputBinding:
    prefix: --aligner
- id: in_bisulfite
  doc: "Process bisulfite libraries. The path to the\nbisulfite aligner (Bismark)\
    \ may be specified in the\nconfiguration file. Bismark runs in non-directional\n\
    mode. Either conventional or bisulfite libraries may\nbe processed, but not both\
    \ simultaneously. The\n--bisulfite option cannot be used in conjunction with\n\
    --bwa."
  type: boolean
  inputBinding:
    prefix: --bisulfite
- id: in_bowtie
  doc: "Specify extra parameters to be passed to Bowtie.\nThese parameters should\
    \ be quoted to clearly\ndelimit bowtie parameters from fastq_screen\nparameters.\
    \ You should not try to use this option\nto override the normal search or reporting\
    \ options\nfor bowtie which are set automatically but it might\nbe useful to allow\
    \ reads to be trimmed before\nalignment etc."
  type: string
  inputBinding:
    prefix: --bowtie
- id: in_bowtie_two
  doc: "Specify extra parameters to be passed to Bowtie 2.\nThese parameters should\
    \ be quoted to clearly\ndelimit Bowtie 2 parameters from FastQ Screen\nparameters.\
    \ You should not try to use this option\nto override the normal search or reporting\
    \ options\nfor bowtie which are set automatically but it might\nbe useful to allow\
    \ reads to be trimmed before\nalignment etc."
  type: long
  inputBinding:
    prefix: --bowtie2
- id: in_bwa
  doc: "Specify extra parameters to be passed to BWA.\nThese parameters should be\
    \ quoted to clearly\ndelimit BWA parameters from FastQ Screen\nparameters. You\
    \ should not try to use this option\nto override the normal search or reporting\
    \ options\nfor BWA which are set automatically but it might\nbe useful to allow\
    \ reads to be trimmed before\nalignment etc."
  type: string
  inputBinding:
    prefix: --bwa
- id: in_conf
  doc: Manually specify a location for the configuration.
  type: File
  inputBinding:
    prefix: --conf
- id: in_filter
  doc: "Produce a FASTQ file containing reads mapping to\nspecified genomes. Pass\
    \ the argument a string of\ncharacters (0, 1, 2, 3, -), in which each character\n\
    corresponds to a reference genome (in the order the\nreference genome occurs in\
    \ the configuration file).\nBelow gives an explanation of each character.\n0:\
    \ Read does not map\n1: Read maps uniquely\n2: Read multi-maps\n3: Read maps (one\
    \ or more times)\n4: Passes filter 0 or filter 1\n5: Passes filter 0 or filter\
    \ 2\n-: Do not apply filter to this genome\nConsider mapping to three genomes\
    \ (A, B and C), the\nstring '003' produces a file in which reads do not\nmap to\
    \ genomes A or B, but map (once or more) to\ngenome C.  The string '--1' would\
    \ generate a file in\nwhich reads uniquely map to genome C. Whether reads\nmap\
    \ to genome A or B would be ignored.\nA read needs to pass all the genome filters\
    \ to be\nconsidered valid (unless --pass specified).\nWhen --filter is used in\
    \ conjuction with --tag, FASTQ\nfiles shall be mapped, tagged and then filtered.\
    \ If\nthe --tag option is not selected however, the input\nFASTQ file should have\
    \ been previously tagged."
  type: File
  inputBinding:
    prefix: --filter
- id: in_force
  doc: "Do not terminate if output files already exist,\ninstead overwrite the files."
  type: boolean
  inputBinding:
    prefix: --force
- id: in_get_genomes
  doc: "Download pre-indexed Bowtie2 genomes for a range of\ncommonly studied species\
    \ and sequences. If used with\n--bisulfite, Bismark bisulfite Bowtie2 indices\
    \ will\nbe downloaded instead."
  type: boolean
  inputBinding:
    prefix: --get_genomes
- id: in_illumina_one_three
  doc: "Assume that the quality values are in encoded in\nIllumina v1.3 format. Defaults\
    \ to Sanger format\nif this flag is not specified."
  type: boolean
  inputBinding:
    prefix: --illumina1_3
- id: in_inverse
  doc: "Inverts the --filter results i.e. reads that pass\nthe --filter parameter\
    \ will not pass when\n--filter --inverse are specified together, and vice\nversa."
  type: boolean
  inputBinding:
    prefix: --inverse
- id: in_no_hits
  doc: "Writes to a file the sequences that did not map to\nany of the specified genomes.\
    \ This option is\nequivalent to specifying --tag --filter 0000 (number\nof zeros\
    \ corresponds to the number of genomes\nscreened).  By default the whole input\
    \ file will be\nmapped, unless overridden by --subset."
  type: boolean
  inputBinding:
    prefix: --nohits
- id: in_outdir
  doc: "Specify a directory in which to save output files.\nIf no directory is specified\
    \ then output files\nare saved in the current working directory."
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_pass
  doc: "Used in conjunction with --filter. By default all\ngenome filters must be\
    \ passed for a read to pass\nthe --filter option.  However, a minimum number\n\
    of genome filters may be specified that a read\nneeds pass to be considered to\
    \ pass the --filter\noption. (--pass 1 effecitively acts as an OR\nboolean operator\
    \ for the genome filters.)"
  type: long
  inputBinding:
    prefix: --pass
- id: in_quiet
  doc: "Suppress all progress reports on stderr and only\nreport errors."
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_subset
  doc: "Don't use the whole sequence file, but create a\ntemporary dataset of this\
    \ specified number of\nreads. The dataset created will be of\napproximately (within\
    \ a factor of 2) of this size.\nIf the real dataset is smaller than twice the\n\
    specified size then the whole dataset will be used.\nSubsets will be taken evenly\
    \ from throughout the\nwhole original dataset. By Default FastQ Screen\nruns with\
    \ this parameter set to 100000. To process\nan entire dataset however, adjust\
    \ --subset to 0."
  type: long
  inputBinding:
    prefix: --subset
- id: in_tag
  doc: "Label each FASTQ read header with a tag listing to\nwhich genomes the read\
    \ did, or did not align. The\nfirst read in the output FASTQ file will list the\n\
    full genome names along with a score denoting\nwhether the read did not align\
    \ (0), aligned\nuniquely to the specified genome (1), or aligned\nmore than once\
    \ (2). In subsequent reads the\ngenome names are omitted and only the score is\n\
    printed, in the same order as the first line.\nThis option results in the he whole\
    \ file being\nprocessed unless overridden explicitly by the user\nwith the --subset\
    \ parameter"
  type: File
  inputBinding:
    prefix: --tag
- id: in_threads
  doc: "Specify across how many threads bowtie will be\nallowed to run. Overrides\
    \ the default value set\nin the configuration file"
  type: long
  inputBinding:
    prefix: --threads
- id: in_top
  doc: "/<int,int> Don't use the whole sequence file, but create a\ntemporary dataset\
    \ of the specified number of\nreads taken from the top of the original file. It\
    \ is\nalso possible to specify the number of lines to skip\nbefore beginning the\
    \ selection e.g.\n--top 100000,5000000 skips the first five million\nreads and\
    \ selects the subsequent one hundred thousand\nreads. While this option is usually\
    \ faster than\ncomparable --subset operations, it does not prevent\nbiases arising\
    \ from non-uniform distribution of\nreads in the original FastQ file. This option\
    \ should\nonly be used when minimising processing time is of\nhighest priority."
  type: long
  inputBinding:
    prefix: --top
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Specify a directory in which to save output files.\nIf no directory is specified\
    \ then output files\nare saved in the current working directory."
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_tag
  doc: "Label each FASTQ read header with a tag listing to\nwhich genomes the read\
    \ did, or did not align. The\nfirst read in the output FASTQ file will list the\n\
    full genome names along with a score denoting\nwhether the read did not align\
    \ (0), aligned\nuniquely to the specified genome (1), or aligned\nmore than once\
    \ (2). In subsequent reads the\ngenome names are omitted and only the score is\n\
    printed, in the same order as the first line.\nThis option results in the he whole\
    \ file being\nprocessed unless overridden explicitly by the user\nwith the --subset\
    \ parameter"
  type: File
  outputBinding:
    glob: $(inputs.in_tag)
cwlVersion: v1.1
baseCommand:
- fastq_screen
