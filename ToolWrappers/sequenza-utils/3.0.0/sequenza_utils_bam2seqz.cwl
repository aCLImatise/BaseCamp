class: CommandLineTool
id: sequenza_utils_bam2seqz.cwl
inputs:
- id: in_pile_up
  doc: Use pileups as input files instead of BAMs.
  type: boolean
  inputBinding:
    prefix: --pileup
- id: in_normal
  doc: "Name of the BAM/pileup file from the reference/normal\nsample"
  type: File
  inputBinding:
    prefix: --normal
- id: in_tumor
  doc: Name of the BAM/pileup file from the tumor sample
  type: File
  inputBinding:
    prefix: --tumor
- id: in_gc
  doc: The GC-content wiggle file
  type: File
  inputBinding:
    prefix: -gc
- id: in_fast_a
  doc: "The reference FASTA file used to generate the\nintermediate pileup. Required\
    \ when input are BAM"
  type: File
  inputBinding:
    prefix: --fasta
- id: in_output
  doc: "Name of the output file. To use gzip compression name\nthe file ending in\
    \ .gz. Default STDOUT."
  type: File
  inputBinding:
    prefix: --output
- id: in_normal_two
  doc: "Optional BAM/pileup file used to compute the\ndepth.normal and depth-ratio,\
    \ instead of using the\nnormal BAM."
  type: long
  inputBinding:
    prefix: --normal2
- id: in_hom
  doc: Threshold to select homozygous positions. Default 0.9.
  type: double
  inputBinding:
    prefix: --hom
- id: in_het
  doc: Threshold to select heterozygous positions. Default
  type: string
  inputBinding:
    prefix: --het
- id: in_chromosome
  doc: "Argument to restrict the input/output to a chromosome\nor a chromosome region.\
    \ Coordinate format is\nName:pos.start-pos.end, eg: chr17:7565097-7590856, for\n\
    a particular region; eg: chr17, for the entire\nchromosome. Chromosome names can\
    \ checked in the\nBAM/pileup files and are depending on the FASTA\nreference used\
    \ for alignment. Default behavior is to\nnot selecting any chromosome."
  type: string[]
  inputBinding:
    prefix: --chromosome
- id: in_parallel
  doc: "Defines the number of chromosomes to run in parallel.\nThe output will be\
    \ divided in multiple files, one for\neach chromosome. The file name will be composed\
    \ by the\noutput argument (used as prefix) and a chromosome name\ngiven by the\
    \ chromosome argument list. This imply that\nboth output and chromosome argument\
    \ need to be set\ncorrectly."
  type: long
  inputBinding:
    prefix: --parallel
- id: in_sam_tools
  doc: "Path of samtools exec file to access the indexes and\ncompute the pileups.\
    \ Default \"samtools\""
  type: File
  inputBinding:
    prefix: --samtools
- id: in_tab_ix
  doc: Path of the tabix binary. Default "tabix"
  type: File
  inputBinding:
    prefix: --tabix
- id: in_q_limit
  doc: "Minimum nucleotide quality score for inclusion in the\ncounts. Default 20."
  type: long
  inputBinding:
    prefix: --qlimit
- id: in_q_format
  doc: "Quality format, options are \"sanger\" or \"illumina\".\nThis will add an\
    \ offset of 33 or 64 respectively to\nthe qlimit value. Default \"sanger\"."
  type: long
  inputBinding:
    prefix: --qformat
- id: in_threshold_filter_positions
  doc: "Threshold to filter positions by the sum of read depth\nof the two samples.\
    \ Default 20.\n"
  type: long
  inputBinding:
    prefix: -N
- id: in_zero_dot_two_five_dot
  doc: --het_f HET_F         Threshold of frequency in the forward strand to trust
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Name of the output file. To use gzip compression name\nthe file ending in\
    \ .gz. Default STDOUT."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- sequenza-utils
- bam2seqz
