#!/usr/bin/env cwl-runner

baseCommand:
- unicycler_polish
class: CommandLineTool
cwlVersion: v1.0
id: unicycler_polish
inputs:
- doc: Input assembly to be polished
  id: assembly
  inputBinding:
    prefix: --assembly
  type: string
- doc: PacBio raw bax.h5 read files
  id: pb_bax
  inputBinding:
    prefix: --pb_bax
  type:
    items: string
    type: array
- doc: PacBio BAM read file
  id: pb_bam
  inputBinding:
    prefix: --pb_bam
  type: string
- doc: FASTA file of PacBio reads
  id: pb_fast_a
  inputBinding:
    prefix: --pb_fasta
  type: string
- doc: FASTQ/FASTA file of long reads
  id: long_reads
  inputBinding:
    prefix: --long_reads
  type: string
- doc: 'do not fix local misassemblies (default: False)'
  id: no_fix_local
  inputBinding:
    prefix: --no_fix_local
  type: boolean
- doc: 'minimum valid short read insert size (default: auto)'
  id: min_insert
  inputBinding:
    prefix: --min_insert
  type: long
- doc: 'maximum valid short read insert size (default: auto)'
  id: max_insert
  inputBinding:
    prefix: --max_insert
  type: long
- doc: 'Minimum long read alignment length (default: 1000)'
  id: min_align_length
  inputBinding:
    prefix: --min_align_length
  type: long
- doc: 'Long read polish changes to a homopolymer of this length or greater will be
    ignored (default: 4)'
  id: homopolymer
  inputBinding:
    prefix: --homopolymer
  type: string
- doc: 'Variants of this size or greater will be assess as large variants (default:
    10)'
  id: large
  inputBinding:
    prefix: --large
  type: string
- doc: 'When assessing long read changes with short read alignments, a variant will
    only be applied if the alternative occurrences in the short read alignments exceed
    this percentage (default: 5)'
  id: illumina_alt
  inputBinding:
    prefix: --illumina_alt
  type: string
- doc: 'Reject Pilon substitutions from long reads if the FreeBayes quality is less
    than this value (default: 10.0)'
  id: free_bayes_qual_cut_off
  inputBinding:
    prefix: --freebayes_qual_cutoff
  type: string
- doc: 'CPU threads to use in alignment and consensus (default: number of CPUs)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'Level of stdout information (0 to 3, default: 2) 0 = no stdout, 1 = basic
    progress indicators, 2 = extra info, 3 = debugging info'
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
- doc: 'path to samtools executable (default: samtools)'
  id: sam_tools
  inputBinding:
    prefix: --samtools
  type: string
- doc: 'path to bowtie2 executable (default: bowtie2)'
  id: bowtie2
  inputBinding:
    prefix: --bowtie2
  type: string
- doc: 'path to minimap2 executable (default: minimap2)'
  id: minimap2
  inputBinding:
    prefix: --minimap2
  type: long
- doc: 'path to freebayes executable (default: freebayes)'
  id: free_bayes
  inputBinding:
    prefix: --freebayes
  type: string
- doc: 'Path to Pitchfork installation of PacBio tools (should contain bin and lib
    directories) (default: )'
  id: pitchfork
  inputBinding:
    prefix: --pitchfork
  type: string
- doc: 'path to bax2bam executable (default: bax2bam)'
  id: bax2bam
  inputBinding:
    prefix: --bax2bam
  type: string
- doc: 'path to pbalign executable (default: pbalign)'
  id: pb_align
  inputBinding:
    prefix: --pbalign
  type: string
- doc: 'path to arrow executable (default: arrow)'
  id: arrow
  inputBinding:
    prefix: --arrow
  type: string
- doc: 'path to pilon jar file (default: pilon*.jar)'
  id: pilon
  inputBinding:
    prefix: --pilon
  type: string
- doc: 'path to java executable (default: java)'
  id: java
  inputBinding:
    prefix: --java
  type: string
- doc: 'path to ALE executable (default: ALE)'
  id: ale
  inputBinding:
    prefix: --ale
  type: string
- doc: 'path to racon executable (default: racon)'
  id: rac_on
  inputBinding:
    prefix: --racon
  type: string
- doc: 'path to miniasm executable (default: minimap)'
  id: minimap
  inputBinding:
    prefix: --minimap
  type: long
- doc: 'path to nucmer executable (default: nucmer)'
  id: nuc_mer
  inputBinding:
    prefix: --nucmer
  type: string
- doc: 'path to show-snps executable (default: show-snps)'
  id: shows_nps
  inputBinding:
    prefix: --showsnps
  type: string
