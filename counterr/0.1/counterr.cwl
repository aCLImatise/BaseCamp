#!/usr/bin/env cwl-runner

baseCommand:
- counterr
class: CommandLineTool
cwlVersion: v1.0
id: counterr
inputs:
- doc: 'the input bam file (default: None)'
  id: bam
  inputBinding:
    prefix: -bam
  type: string
- doc: 'the input fasta file (default: None)'
  id: genome
  inputBinding:
    prefix: -genome
  type: string
- doc: 'the output directory for figures and stats (default: None)'
  id: output_dir
  inputBinding:
    prefix: -output_dir
  type: string
- doc: 'pass this flag to not generate figures (default: False)'
  id: no_figures
  inputBinding:
    prefix: -no_figures
  type: boolean
- doc: 'the input bai filename if non-conventionally named (default: )'
  id: bai
  inputBinding:
    prefix: -bai
  type: string
- doc: 'pass this flag to follow progress in the terminal (default: False)'
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: 'minimum contig length (default: 1500)'
  id: len_min_contig
  inputBinding:
    prefix: -len_min_contig
  type: string
- doc: 'minimum mapq threshold (default: 40)'
  id: mapq_th_res
  inputBinding:
    prefix: -mapq_thres
  type: string
- doc: 'minimum read length (default: 1500)'
  id: len_min_read
  inputBinding:
    prefix: -len_min_read
  type: string
- doc: 'minimum length aligned (default: 1000)'
  id: len_min_aln
  inputBinding:
    prefix: -len_min_aln
  type: string
- doc: 'bit flag for read filter (as specified in SAM doc) (default: 3845)'
  id: bit_flag
  inputBinding:
    prefix: -bitflag
  type: string
- doc: 'minimum homopolymer length (default: 3)'
  id: len_min_hp
  inputBinding:
    prefix: -len_min_hp
  type: string
- doc: 'maximum homopolymer length (default: 20)'
  id: len_max_hp
  inputBinding:
    prefix: -len_max_hp
  type: string
- doc: 'length of the k-mer context for context dependent substitution table (default:
    5)'
  id: len_context_sub
  inputBinding:
    prefix: -len_context_sub
  type: string
- doc: 'length of the k-mer context for context dependent insertion table (default:
    6)'
  id: len_context_ins
  inputBinding:
    prefix: -len_context_ins
  type: string
- doc: 'maximum length of indels to consider (default: 20)'
  id: len_max_in_del
  inputBinding:
    prefix: -len_max_indel
  type: string
- doc: 'length of the contig edge to trim before computing various statistics (default:
    1)'
  id: len_trim_contig_edge
  inputBinding:
    prefix: -len_trim_contig_edge
  type: string
- doc: 'pass this flag to NOT perform reverse complementing of the reverse complement
    mapped reads (default: False)'
  id: use_recorded
  inputBinding:
    prefix: -use_recorded
  type: boolean
- doc: "pass this flag to run the program with 'lim' randomly selected reads (both\
    \ pass and fail) (default: -1)"
  id: lim
  inputBinding:
    prefix: -lim
  type: string
- doc: 'maximum number of points to be plotted for any scatter plots (default: 100000)'
  id: num_pts_max
  inputBinding:
    prefix: -num_pts_max
  type: string
- doc: 'the name of the output PDF report if the user wishes to use a non-default
    name. (default: report.pdf)'
  id: report_name
  inputBinding:
    prefix: -report_name
  type: string
