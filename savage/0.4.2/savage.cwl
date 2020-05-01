#!/usr/bin/env cwl-runner

baseCommand:
- savage
class: CommandLineTool
cwlVersion: v1.0
id: savage
inputs:
- doc: path to input fastq containing single-end reads
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: path to input fastq containing paired-end reads (/1)
  id: p1
  inputBinding:
    prefix: -p1
  type: string
- doc: path to input fastq containing paired-end reads (/2)
  id: p2
  inputBinding:
    prefix: -p2
  type: string
- doc: minimum overlap length required between reads
  id: min_overlap_len
  inputBinding:
    prefix: --min_overlap_len
  type: long
- doc: allowed number of cores
  id: num_threads
  inputBinding:
    prefix: --num_threads
  type: string
- doc: split the data set into patches s.t. 500 < coverage/split_num < 1000
  id: split
  inputBinding:
    prefix: --split
  type: string
- doc: use this option when paired-end input reads are in forward-reverse orientation;
    this option will take reverse complements of /2 reads (specified with -p2) please
    see the SAVAGE manual for more information about input read orientations
  id: rev_comp
  inputBinding:
    prefix: --revcomp
  type: boolean
- doc: specify output directory
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: reference genome in fasta format
  id: ref
  inputBinding:
    prefix: --ref
  type: string
- doc: skip Stage a (initial contig formation)
  id: no_stage_a
  inputBinding:
    prefix: --no_stage_a
  type: boolean
- doc: skip Stage b (extending initial contigs)
  id: no_stage_b
  inputBinding:
    prefix: --no_stage_b
  type: boolean
- doc: skip Stage c (merging maximized contigs into master strains)
  id: no_stage_c
  inputBinding:
    prefix: --no_stage_c
  type: boolean
- doc: skip overlap computations (use existing overlaps file instead)
  id: no_overlaps
  inputBinding:
    prefix: --no_overlaps
  type: boolean
- doc: skip preprocessing procedure (i.e. creating data patches)
  id: no_preprocessing
  inputBinding:
    prefix: --no_preprocessing
  type: boolean
- doc: skip all assembly steps; only use this option when using --count_strains separate
    from assembly (e.g. on a denovo assembly)
  id: no_assembly
  inputBinding:
    prefix: --no_assembly
  type: boolean
- doc: 'compute a lower bound on the number of strains in this sample; note: this
    requires a reference genome.'
  id: count_strains
  inputBinding:
    prefix: --count_strains
  type: boolean
- doc: ignore subread info from previous stage
  id: ignore_sub_reads
  inputBinding:
    prefix: --ignore_subreads
  type: boolean
- doc: specify maximal distance between contigs for merging into master strains (stage
    c)
  id: merge_contigs
  inputBinding:
    prefix: --merge_contigs
  type: string
- doc: minimum clique size used during error correction
  id: min_clique_size
  inputBinding:
    prefix: --min_clique_size
  type: long
- doc: min_overlap_len used in stage c
  id: overlap_len_stage_c
  inputBinding:
    prefix: --overlap_len_stage_c
  type: string
- doc: minimum contig length required for stage c input contigs
  id: contig_len_stage_c
  inputBinding:
    prefix: --contig_len_stage_c
  type: string
- doc: disable merging along branches by removing them from the graph (stage b & c)
  id: keep_branches
  inputBinding:
    prefix: --keep_branches
  type: boolean
- doc: 'input parameter -e=SFO_MM for sfo: maximal mismatch rate 1/SFO_MM'
  id: sfo_mm
  inputBinding:
    prefix: --sfo_mm
  type: string
- doc: use this option for diploid genome assembly
  id: diploid
  inputBinding:
    prefix: --diploid
  type: boolean
- doc: minimum contig length required for diploid step contigs
  id: diploid_contig_len
  inputBinding:
    prefix: --diploid_contig_len
  type: string
- doc: min_overlap_len used in diploid assembly step
  id: diploid_overlap_len
  inputBinding:
    prefix: --diploid_overlap_len
  type: string
- doc: average length of the input reads; will be computed from the input if not specified
  id: average_read_len
  inputBinding:
    prefix: --average_read_len
  type: string
- doc: disable kallisto-based filtering of contigs
  id: no_filtering
  inputBinding:
    prefix: --no_filtering
  type: boolean
- doc: maximum extension length for a sequence to be called a tip
  id: max_tip_len
  inputBinding:
    prefix: --max_tip_len
  type: long
