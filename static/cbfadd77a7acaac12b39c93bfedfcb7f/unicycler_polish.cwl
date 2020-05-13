class: CommandLineTool
id: unicycler_polish.cwl
inputs:
- id: assembly
  doc: Input assembly to be polished
  type: string
  inputBinding:
    prefix: --assembly
- id: pb_bax
  doc: PacBio raw bax.h5 read files
  type: string[]
  inputBinding:
    prefix: --pb_bax
- id: pb_bam
  doc: PacBio BAM read file
  type: string
  inputBinding:
    prefix: --pb_bam
- id: pb_fast_a
  doc: FASTA file of PacBio reads
  type: string
  inputBinding:
    prefix: --pb_fasta
- id: long_reads
  doc: FASTQ/FASTA file of long reads
  type: string
  inputBinding:
    prefix: --long_reads
- id: no_fix_local
  doc: 'do not fix local misassemblies (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_fix_local
- id: min_insert
  doc: 'minimum valid short read insert size (default: auto)'
  type: long
  inputBinding:
    prefix: --min_insert
- id: max_insert
  doc: 'maximum valid short read insert size (default: auto)'
  type: long
  inputBinding:
    prefix: --max_insert
- id: min_align_length
  doc: 'Minimum long read alignment length (default: 1000)'
  type: long
  inputBinding:
    prefix: --min_align_length
- id: homopolymer
  doc: 'Long read polish changes to a homopolymer of this length or greater will be
    ignored (default: 4)'
  type: string
  inputBinding:
    prefix: --homopolymer
- id: large
  doc: 'Variants of this size or greater will be assess as large variants (default:
    10)'
  type: string
  inputBinding:
    prefix: --large
- id: illumina_alt
  doc: 'When assessing long read changes with short read alignments, a variant will
    only be applied if the alternative occurrences in the short read alignments exceed
    this percentage (default: 5)'
  type: string
  inputBinding:
    prefix: --illumina_alt
- id: free_bayes_qual_cut_off
  doc: 'Reject Pilon substitutions from long reads if the FreeBayes quality is less
    than this value (default: 10.0)'
  type: string
  inputBinding:
    prefix: --freebayes_qual_cutoff
- id: threads
  doc: 'CPU threads to use in alignment and consensus (default: number of CPUs)'
  type: string
  inputBinding:
    prefix: --threads
- id: verbosity
  doc: 'Level of stdout information (0 to 3, default: 2) 0 = no stdout, 1 = basic
    progress indicators, 2 = extra info, 3 = debugging info'
  type: string
  inputBinding:
    prefix: --verbosity
- id: sam_tools
  doc: 'path to samtools executable (default: samtools)'
  type: string
  inputBinding:
    prefix: --samtools
- id: bowtie2
  doc: 'path to bowtie2 executable (default: bowtie2)'
  type: string
  inputBinding:
    prefix: --bowtie2
- id: minimap2
  doc: 'path to minimap2 executable (default: minimap2)'
  type: long
  inputBinding:
    prefix: --minimap2
- id: free_bayes
  doc: 'path to freebayes executable (default: freebayes)'
  type: string
  inputBinding:
    prefix: --freebayes
- id: pitchfork
  doc: 'Path to Pitchfork installation of PacBio tools (should contain bin and lib
    directories) (default: )'
  type: string
  inputBinding:
    prefix: --pitchfork
- id: bax2bam
  doc: 'path to bax2bam executable (default: bax2bam)'
  type: string
  inputBinding:
    prefix: --bax2bam
- id: pb_align
  doc: 'path to pbalign executable (default: pbalign)'
  type: string
  inputBinding:
    prefix: --pbalign
- id: arrow
  doc: 'path to arrow executable (default: arrow)'
  type: string
  inputBinding:
    prefix: --arrow
- id: pilon
  doc: 'path to pilon jar file (default: pilon*.jar)'
  type: string
  inputBinding:
    prefix: --pilon
- id: java
  doc: 'path to java executable (default: java)'
  type: string
  inputBinding:
    prefix: --java
- id: ale
  doc: 'path to ALE executable (default: ALE)'
  type: string
  inputBinding:
    prefix: --ale
- id: rac_on
  doc: 'path to racon executable (default: racon)'
  type: string
  inputBinding:
    prefix: --racon
- id: minimap
  doc: 'path to miniasm executable (default: minimap)'
  type: long
  inputBinding:
    prefix: --minimap
- id: nuc_mer
  doc: 'path to nucmer executable (default: nucmer)'
  type: string
  inputBinding:
    prefix: --nucmer
- id: shows_nps
  doc: 'path to show-snps executable (default: show-snps)'
  type: string
  inputBinding:
    prefix: --showsnps
outputs: []
cwlVersion: v1.1
baseCommand:
- unicycler_polish
