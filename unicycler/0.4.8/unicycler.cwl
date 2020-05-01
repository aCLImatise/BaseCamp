#!/usr/bin/env cwl-runner

baseCommand:
- unicycler
class: CommandLineTool
cwlVersion: v1.0
id: unicycler
inputs:
- doc: Show a help message with all program options
  id: help_all
  inputBinding:
    prefix: --help_all
  type: boolean
- doc: FASTQ file of unpaired short reads (optional)
  id: unpaired
  inputBinding:
    prefix: --unpaired
  type: string
- doc: FASTQ or FASTA file of long reads (optional)
  id: long
  inputBinding:
    prefix: --long
  type: string
- doc: Output directory (required)
  id: out
  inputBinding:
    prefix: --out
  type: string
- doc: 'Level of stdout and log file information (default: 1) 0 = no stdout, 1 = basic
    progress indicators, 2 = extra info, 3 = debugging info'
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
- doc: 'Exclude contigs from the FASTA file which are shorter than this length (default:
    100)'
  id: min_fast_a_length
  inputBinding:
    prefix: --min_fasta_length
  type: long
- doc: 'Level of file retention (default: 1) 0 = only keep final files: assembly (FASTA,
    GFA and log), 1 = also save graphs at main checkpoints, 2 = also keep SAM (enables
    fast rerun in different mode), 3 = keep all temp files and save all graphs (for
    debugging)'
  id: keep
  inputBinding:
    prefix: --keep
  type: string
- doc: 'Produce a VCF by mapping the short reads to the final assembly (experimental,
    default: do not produce a vcf file)'
  id: vcf
  inputBinding:
    prefix: --vcf
  type: boolean
- doc: 'Number of threads used (default: 8)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'Bridging mode (default: normal) conservative = smaller contigs, lowest misassembly
    rate normal = moderate contig size and misassembly rate bold = longest contigs,
    higher misassembly rate'
  id: mode
  inputBinding:
    prefix: --mode
  type: string
- doc: 'The expected number of linear (i.e. non-circular) sequences in the underlying
    sequence (default: 0)'
  id: linear_seqs
  inputBinding:
    prefix: --linear_seqs
  type: string
