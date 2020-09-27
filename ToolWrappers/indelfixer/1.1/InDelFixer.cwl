class: CommandLineTool
id: InDelFixer.cwl
inputs:
- id: in_path_output_directory
  doc: ': Path to the output directory (default: current directory).'
  type: File
  inputBinding:
    prefix: -o
- id: in_path_ngs_input
  doc: ': Path to the NGS input file (FASTA, FASTQ or SFF format) [REQUIRED].'
  type: File
  inputBinding:
    prefix: -i
- id: in_ir
  doc: ': Path to the second paired end file (FASTQ) [ONLY REQUIRED if first file
    is also fastq].'
  type: File
  inputBinding:
    prefix: -ir
- id: in_path_reference_genomes
  doc: ': Path to the reference genomes file (FASTA format) [REQUIRED].'
  type: File
  inputBinding:
    prefix: -g
- id: in_region_reference_genome
  doc: ': Region on the reference genome (i.e. 342-944).'
  type: long
  inputBinding:
    prefix: -r
- id: in_kmer_size_default
  doc: ': Kmer size (default 10).'
  type: long
  inputBinding:
    prefix: -k
- id: in_kmer_offset_default
  doc: ': Kmer offset (default 2).'
  type: long
  inputBinding:
    prefix: -v
- id: in_cut
  doc: ": Cut given number of bases (primer) at 5' and 3' (default 0)."
  type: long
  inputBinding:
    prefix: -cut
- id: in_refine
  doc: ": Computes a consensus sequence from alignment and re-aligns against that.\n\
    Refinement is repeated as many times as specified."
  type: long
  inputBinding:
    prefix: -refine
- id: in_mcc
  doc: ': Minimal coverage to replace a reference base in the consensus (default 1).'
  type: long
  inputBinding:
    prefix: -mcc
- id: in_rm_del
  doc: ': Removes conserved gaps from consensus sequence during refinement.'
  type: boolean
  inputBinding:
    prefix: -rmDel
- id: in_sensitive
  doc: ': More sensitive but slower alignment.'
  type: boolean
  inputBinding:
    prefix: -sensitive
- id: in_fix
  doc: ': Fill frame-shift causing deletions with consensus sequence.'
  type: boolean
  inputBinding:
    prefix: -fix
- id: in_no_hashing
  doc: ': No fast kmer-matching to find approximate mapping region. Please use with
    PacBio data!'
  type: boolean
  inputBinding:
    prefix: -noHashing
- id: in_realign
  doc: ": Reads are aligned to the whole reference sequence,\nif the relative mismatch\
    \ rate is above the given threshold (default 0.1)."
  type: double
  inputBinding:
    prefix: -realign
- id: in_minimal_readlength_prior
  doc: ': Minimal read-length prior alignment (default 0).'
  type: long
  inputBinding:
    prefix: -l
- id: in_la
  doc: ': Minimal read-length after alignment (default 0).'
  type: long
  inputBinding:
    prefix: -la
- id: in_ins
  doc: ': The maximum percentage of insertions allowed [range 0.0 - 1.0] (default
    1.0).'
  type: double
  inputBinding:
    prefix: -ins
- id: in_del
  doc: ': The maximum percentage of deletions allowed [range 0.0 - 1.0] (default 1.0).'
  type: double
  inputBinding:
    prefix: -del
- id: in_sub
  doc: ': The maximum percentage of substitutions allowed [range 0.0 - 1.0] (default
    0.5).'
  type: double
  inputBinding:
    prefix: -sub
- id: in_max_del
  doc: ': The maximum number of consecutive deletions allowed (default no filtering).'
  type: long
  inputBinding:
    prefix: -maxDel
- id: in_minimal_average_phred
  doc: ': Minimal average Phred score of the aligned read (default 20).'
  type: long
  inputBinding:
    prefix: -q
- id: in_gop
  doc: ': Gap opening costs for Smith-Waterman (default 30).'
  type: boolean
  inputBinding:
    prefix: -gop
- id: in_gex
  doc: ': Gap extension costs for Smith-Waterman (default 3).'
  type: boolean
  inputBinding:
    prefix: -gex
- id: in_four_five_four
  doc: ': 10 open / 1 extend'
  type: boolean
  inputBinding:
    prefix: '-454'
- id: in_var_25
  doc: ': 30 open / 3 extend'
  type: boolean
  inputBinding:
    prefix: -illumina
- id: in_var_26
  doc: ': 5 open / 3 extend'
  type: boolean
  inputBinding:
    prefix: -pacbio
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_four_five_four_slash_roche
  doc: ': java -jar InDelFixer.jar -i libCase102.fastq -g referenceGenomes.fasta -454'
  type: long
  inputBinding:
    position: 0
- id: in_java_jar_indelfixerjar_i_libcaseccsfastq
  doc: ': java -jar InDelFixer.jar -i libCase102.ccs.fastq -g referenceGenomes.fasta
    -noHashing -pacbio'
  type: string
  inputBinding:
    position: 1
- id: in_java_jar_indelfixerjar_i_libcaserfastq
  doc: ': java -jar InDelFixer.jar -i libCase102_R1.fastq -ir libCase102_R2.fastq
    -g referenceGenomes.fasta -illumina'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_directory
  doc: ': Path to the output directory (default: current directory).'
  type: File
  outputBinding:
    glob: $(inputs.in_path_output_directory)
cwlVersion: v1.1
baseCommand:
- InDelFixer
