class: CommandLineTool
id: savage.cwl
inputs:
- id: in_path_input_fastq
  doc: path to input fastq containing single-end reads
  type: File
  inputBinding:
    prefix: -s
- id: in_p_one
  doc: path to input fastq containing paired-end reads (/1)
  type: long
  inputBinding:
    prefix: -p1
- id: in_p_two
  doc: path to input fastq containing paired-end reads (/2)
  type: long
  inputBinding:
    prefix: -p2
- id: in_min_overlap_len
  doc: minimum overlap length required between reads
  type: long
  inputBinding:
    prefix: --min_overlap_len
- id: in_num_threads
  doc: allowed number of cores
  type: long
  inputBinding:
    prefix: --num_threads
- id: in_split
  doc: split the data set into patches s.t. 500 < coverage/split_num < 1000
  type: long
  inputBinding:
    prefix: --split
- id: in_rev_comp
  doc: "use this option when paired-end input reads are in forward-reverse orientation;\n\
    this option will take reverse complements of /2 reads (specified with -p2)\nplease\
    \ see the SAVAGE manual for more information about input read orientations"
  type: boolean
  inputBinding:
    prefix: --revcomp
- id: in_outdir
  doc: specify output directory
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_ref
  doc: reference genome in fasta format
  type: string
  inputBinding:
    prefix: --ref
- id: in_no_stage_a
  doc: skip Stage a (initial contig formation)
  type: boolean
  inputBinding:
    prefix: --no_stage_a
- id: in_no_stage_b
  doc: skip Stage b (extending initial contigs)
  type: boolean
  inputBinding:
    prefix: --no_stage_b
- id: in_no_stage_c
  doc: skip Stage c (merging maximized contigs into master strains)
  type: boolean
  inputBinding:
    prefix: --no_stage_c
- id: in_no_overlaps
  doc: skip overlap computations (use existing overlaps file instead)
  type: boolean
  inputBinding:
    prefix: --no_overlaps
- id: in_no_preprocessing
  doc: skip preprocessing procedure (i.e. creating data patches)
  type: boolean
  inputBinding:
    prefix: --no_preprocessing
- id: in_no_assembly
  doc: skip all assembly steps; only use this option when using --count_strains separate
    from assembly (e.g. on a denovo assembly)
  type: boolean
  inputBinding:
    prefix: --no_assembly
- id: in_count_strains
  doc: 'compute a lower bound on the number of strains in this sample; note: this
    requires a reference genome.'
  type: boolean
  inputBinding:
    prefix: --count_strains
- id: in_ignore_sub_reads
  doc: ignore subread info from previous stage
  type: boolean
  inputBinding:
    prefix: --ignore_subreads
- id: in_merge_contigs
  doc: specify maximal distance between contigs for merging into master strains (stage
    c)
  type: string
  inputBinding:
    prefix: --merge_contigs
- id: in_min_clique_size
  doc: minimum clique size used during error correction
  type: long
  inputBinding:
    prefix: --min_clique_size
- id: in_overlap_len_stage_c
  doc: min_overlap_len used in stage c
  type: string
  inputBinding:
    prefix: --overlap_len_stage_c
- id: in_contig_len_stage_c
  doc: minimum contig length required for stage c input contigs
  type: long
  inputBinding:
    prefix: --contig_len_stage_c
- id: in_keep_branches
  doc: disable merging along branches by removing them from the graph (stage b & c)
  type: boolean
  inputBinding:
    prefix: --keep_branches
- id: in_sfo_mm
  doc: 'input parameter -e=SFO_MM for sfo: maximal mismatch rate 1/SFO_MM'
  type: long
  inputBinding:
    prefix: --sfo_mm
- id: in_diploid
  doc: use this option for diploid genome assembly
  type: boolean
  inputBinding:
    prefix: --diploid
- id: in_diploid_contig_len
  doc: minimum contig length required for diploid step contigs
  type: long
  inputBinding:
    prefix: --diploid_contig_len
- id: in_diploid_overlap_len
  doc: min_overlap_len used in diploid assembly step
  type: string
  inputBinding:
    prefix: --diploid_overlap_len
- id: in_average_read_len
  doc: average length of the input reads; will be computed from the input if not specified
  type: long
  inputBinding:
    prefix: --average_read_len
- id: in_no_filtering
  doc: disable kallisto-based filtering of contigs
  type: boolean
  inputBinding:
    prefix: --no_filtering
- id: in_max_tip_len
  doc: "maximum extension length for a sequence to be called a tip\n"
  type: long
  inputBinding:
    prefix: --max_tip_len
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: specify output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- savage
