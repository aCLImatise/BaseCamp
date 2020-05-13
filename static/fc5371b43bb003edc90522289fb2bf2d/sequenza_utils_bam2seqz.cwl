class: CommandLineTool
id: sequenza_utils_bam2seqz.cwl
inputs:
- id: pile_up
  doc: Use pileups as input files instead of BAMs.
  type: boolean
  inputBinding:
    prefix: --pileup
- id: normal
  doc: Name of the BAM/pileup file from the reference/normal sample
  type: string
  inputBinding:
    prefix: --normal
- id: tumor
  doc: Name of the BAM/pileup file from the tumor sample
  type: string
  inputBinding:
    prefix: --tumor
- id: gc
  doc: The GC-content wiggle file
  type: string
  inputBinding:
    prefix: -gc
- id: fast_a
  doc: The reference FASTA file used to generate the intermediate pileup. Required
    when input are BAM
  type: string
  inputBinding:
    prefix: --fasta
- id: output
  doc: Name of the output file. To use gzip compression name the file ending in .gz.
    Default STDOUT.
  type: string
  inputBinding:
    prefix: --output
- id: normal_2
  doc: Optional BAM/pileup file used to compute the depth.normal and depth-ratio,
    instead of using the normal BAM.
  type: string
  inputBinding:
    prefix: --normal2
- id: hom
  doc: Threshold to select homozygous positions. Default 0.9.
  type: string
  inputBinding:
    prefix: --hom
- id: het
  doc: Threshold to select heterozygous positions. Default 0.25.
  type: string
  inputBinding:
    prefix: --het
- id: het_f
  doc: Threshold of frequency in the forward strand to trust heterozygous calls. Default
    -0.2 (Disabled, effective with values >= 0).
  type: string
  inputBinding:
    prefix: --het_f
- id: chromosome
  doc: 'Argument to restrict the input/output to a chromosome or a chromosome region.
    Coordinate format is Name:pos.start-pos.end, eg: chr17:7565097-7590856, for a
    particular region; eg: chr17, for the entire chromosome. Chromosome names can
    checked in the BAM/pileup files and are depending on the FASTA reference used
    for alignment. Default behavior is to not selecting any chromosome.'
  type: string[]
  inputBinding:
    prefix: --chromosome
- id: parallel
  doc: Defines the number of chromosomes to run in parallel. The output will be divided
    in multiple files, one for each chromosome. The file name will be composed by
    the output argument (used as prefix) and a chromosome name given by the chromosome
    argument list. This imply that both output and chromosome argument need to be
    set correctly.
  type: string
  inputBinding:
    prefix: --parallel
- id: sam_tools
  doc: Path of samtools exec file to access the indexes and compute the pileups. Default
    "samtools"
  type: string
  inputBinding:
    prefix: --samtools
- id: tab_ix
  doc: Path of the tabix binary. Default "tabix"
  type: string
  inputBinding:
    prefix: --tabix
- id: q_limit
  doc: Minimum nucleotide quality score for inclusion in the counts. Default 20.
  type: string
  inputBinding:
    prefix: --qlimit
- id: q_format
  doc: Quality format, options are "sanger" or "illumina". This will add an offset
    of 33 or 64 respectively to the qlimit value. Default "sanger".
  type: string
  inputBinding:
    prefix: --qformat
- id: n
  doc: Threshold to filter positions by the sum of read depth of the two samples.
    Default 20.
  type: string
  inputBinding:
    prefix: -N
outputs: []
cwlVersion: v1.1
baseCommand:
- sequenza-utils
- bam2seqz
