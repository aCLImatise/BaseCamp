class: CommandLineTool
id: ../../../InDelFixer.cwl
inputs:
- id: path_current_directory
  doc: ': Path to the output directory (default: current directory).'
  type: File
  inputBinding:
    prefix: -o
- id: path_fasta_fastq
  doc: ': Path to the NGS input file (FASTA, FASTQ or SFF format) [REQUIRED].'
  type: File
  inputBinding:
    prefix: -i
- id: ir
  doc: ': Path to the second paired end file (FASTQ) [ONLY REQUIRED if first file
    is also fastq].'
  type: File
  inputBinding:
    prefix: -ir
- id: path_reference_genomes
  doc: ': Path to the reference genomes file (FASTA format) [REQUIRED].'
  type: File
  inputBinding:
    prefix: -g
- id: region_reference_ie
  doc: ': Region on the reference genome (i.e. 342-944).'
  type: long
  inputBinding:
    prefix: -r
- id: kmer_size_default
  doc: ': Kmer size (default 10).'
  type: long
  inputBinding:
    prefix: -k
- id: kmer_offset_default
  doc: ': Kmer offset (default 2).'
  type: long
  inputBinding:
    prefix: -v
- id: cut
  doc: ": Cut given number of bases (primer) at 5' and 3' (default 0)."
  type: long
  inputBinding:
    prefix: -cut
- id: refine
  doc: ': Computes a consensus sequence from alignment and re-aligns against that.
    Refinement is repeated as many times as specified.'
  type: long
  inputBinding:
    prefix: -refine
- id: mcc
  doc: ': Minimal coverage to replace a reference base in the consensus (default 1).'
  type: long
  inputBinding:
    prefix: -mcc
- id: rm_del
  doc: ': Removes conserved gaps from consensus sequence during refinement.'
  type: boolean
  inputBinding:
    prefix: -rmDel
- id: sensitive
  doc: ': More sensitive but slower alignment.'
  type: boolean
  inputBinding:
    prefix: -sensitive
- id: fix
  doc: ': Fill frame-shift causing deletions with consensus sequence.'
  type: boolean
  inputBinding:
    prefix: -fix
- id: no_hashing
  doc: ': No fast kmer-matching to find approximate mapping region. Please use with
    PacBio data!'
  type: boolean
  inputBinding:
    prefix: -noHashing
- id: realign
  doc: ': Reads are aligned to the whole reference sequence, if the relative mismatch
    rate is above the given threshold (default 0.1).'
  type: string
  inputBinding:
    prefix: -realign
- id: minimal_readlength_default
  doc: ': Minimal read-length prior alignment (default 0).'
  type: long
  inputBinding:
    prefix: -l
- id: la
  doc: ': Minimal read-length after alignment (default 0).'
  type: long
  inputBinding:
    prefix: -la
- id: ins
  doc: ': The maximum percentage of insertions allowed [range 0.0 - 1.0] (default
    1.0).'
  type: string
  inputBinding:
    prefix: -ins
- id: del
  doc: ': The maximum percentage of deletions allowed [range 0.0 - 1.0] (default 1.0).'
  type: string
  inputBinding:
    prefix: -del
- id: sub
  doc: ': The maximum percentage of substitutions allowed [range 0.0 - 1.0] (default
    0.5).'
  type: string
  inputBinding:
    prefix: -sub
- id: max_del
  doc: ': The maximum number of consecutive deletions allowed (default no filtering).'
  type: long
  inputBinding:
    prefix: -maxDel
- id: minimal_average_phred
  doc: ': Minimal average Phred score of the aligned read (default 20).'
  type: long
  inputBinding:
    prefix: -q
- id: gop
  doc: ': Gap opening costs for Smith-Waterman (default 30).'
  type: boolean
  inputBinding:
    prefix: -gop
- id: gex
  doc: ': Gap extension costs for Smith-Waterman (default 3).'
  type: boolean
  inputBinding:
    prefix: -gex
- id: four_five_four
  doc: ': 10 open / 1 extend'
  type: boolean
  inputBinding:
    prefix: '-454'
- id: var_25
  doc: ': 30 open / 3 extend'
  type: boolean
  inputBinding:
    prefix: -illumina
- id: var_26
  doc: ': 5 open / 3 extend'
  type: boolean
  inputBinding:
    prefix: -pacbio
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: four_five_four_slash_roche
  doc: ': java -jar InDelFixer.jar -i libCase102.fastq -g referenceGenomes.fasta -454'
  type: string
  inputBinding:
    position: 0
- id: java_jar_indelfixerjar_i_libcaseccsfastq
  doc: ': java -jar InDelFixer.jar -i libCase102.ccs.fastq -g referenceGenomes.fasta
    -noHashing -pacbio'
  type: string
  inputBinding:
    position: 1
- id: java_jar_indelfixerjar_i_libcaserfastq
  doc: ': java -jar InDelFixer.jar -i libCase102_R1.fastq -ir libCase102_R2.fastq
    -g referenceGenomes.fasta -illumina'
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- InDelFixer
