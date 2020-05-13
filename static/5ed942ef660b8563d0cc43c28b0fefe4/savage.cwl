class: CommandLineTool
id: savage.cwl
inputs:
- id: s
  doc: path to input fastq containing single-end reads
  type: string
  inputBinding:
    prefix: -s
- id: p1
  doc: path to input fastq containing paired-end reads (/1)
  type: string
  inputBinding:
    prefix: -p1
- id: p2
  doc: path to input fastq containing paired-end reads (/2)
  type: string
  inputBinding:
    prefix: -p2
- id: min_overlap_len
  doc: minimum overlap length required between reads
  type: long
  inputBinding:
    prefix: --min_overlap_len
- id: num_threads
  doc: allowed number of cores
  type: string
  inputBinding:
    prefix: --num_threads
- id: split
  doc: split the data set into patches s.t. 500 < coverage/split_num < 1000
  type: string
  inputBinding:
    prefix: --split
- id: rev_comp
  doc: use this option when paired-end input reads are in forward-reverse orientation;
    this option will take reverse complements of /2 reads (specified with -p2) please
    see the SAVAGE manual for more information about input read orientations
  type: boolean
  inputBinding:
    prefix: --revcomp
- id: outdir
  doc: specify output directory
  type: string
  inputBinding:
    prefix: --outdir
- id: ref
  doc: reference genome in fasta format
  type: string
  inputBinding:
    prefix: --ref
- id: no_stage_a
  doc: skip Stage a (initial contig formation)
  type: boolean
  inputBinding:
    prefix: --no_stage_a
- id: no_stage_b
  doc: skip Stage b (extending initial contigs)
  type: boolean
  inputBinding:
    prefix: --no_stage_b
- id: no_stage_c
  doc: skip Stage c (merging maximized contigs into master strains)
  type: boolean
  inputBinding:
    prefix: --no_stage_c
- id: no_overlaps
  doc: skip overlap computations (use existing overlaps file instead)
  type: boolean
  inputBinding:
    prefix: --no_overlaps
- id: no_preprocessing
  doc: skip preprocessing procedure (i.e. creating data patches)
  type: boolean
  inputBinding:
    prefix: --no_preprocessing
- id: no_assembly
  doc: skip all assembly steps; only use this option when using --count_strains separate
    from assembly (e.g. on a denovo assembly)
  type: boolean
  inputBinding:
    prefix: --no_assembly
- id: count_strains
  doc: 'compute a lower bound on the number of strains in this sample; note: this
    requires a reference genome.'
  type: boolean
  inputBinding:
    prefix: --count_strains
- id: ignore_sub_reads
  doc: ignore subread info from previous stage
  type: boolean
  inputBinding:
    prefix: --ignore_subreads
- id: merge_contigs
  doc: specify maximal distance between contigs for merging into master strains (stage
    c)
  type: string
  inputBinding:
    prefix: --merge_contigs
- id: min_clique_size
  doc: minimum clique size used during error correction
  type: long
  inputBinding:
    prefix: --min_clique_size
- id: overlap_len_stage_c
  doc: min_overlap_len used in stage c
  type: string
  inputBinding:
    prefix: --overlap_len_stage_c
- id: contig_len_stage_c
  doc: minimum contig length required for stage c input contigs
  type: string
  inputBinding:
    prefix: --contig_len_stage_c
- id: keep_branches
  doc: disable merging along branches by removing them from the graph (stage b & c)
  type: boolean
  inputBinding:
    prefix: --keep_branches
- id: sfo_mm
  doc: 'input parameter -e=SFO_MM for sfo: maximal mismatch rate 1/SFO_MM'
  type: string
  inputBinding:
    prefix: --sfo_mm
- id: diploid
  doc: use this option for diploid genome assembly
  type: boolean
  inputBinding:
    prefix: --diploid
- id: diploid_contig_len
  doc: minimum contig length required for diploid step contigs
  type: string
  inputBinding:
    prefix: --diploid_contig_len
- id: diploid_overlap_len
  doc: min_overlap_len used in diploid assembly step
  type: string
  inputBinding:
    prefix: --diploid_overlap_len
- id: average_read_len
  doc: average length of the input reads; will be computed from the input if not specified
  type: string
  inputBinding:
    prefix: --average_read_len
- id: no_filtering
  doc: disable kallisto-based filtering of contigs
  type: boolean
  inputBinding:
    prefix: --no_filtering
- id: max_tip_len
  doc: maximum extension length for a sequence to be called a tip
  type: long
  inputBinding:
    prefix: --max_tip_len
outputs: []
cwlVersion: v1.1
baseCommand:
- savage
