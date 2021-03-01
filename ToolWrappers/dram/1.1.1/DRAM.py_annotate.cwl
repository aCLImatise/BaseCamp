class: CommandLineTool
id: DRAM.py_annotate.cwl
inputs:
- id: in_input_fast_a
  doc: "fasta file, optionally with wildcards to point to\nmultiple fastas (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --input_fasta
- id: in_output_dir
  doc: 'output directory (default: None)'
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_min_contig_size
  doc: "minimum contig size to be used for gene prediction\n(default: 2500)"
  type: long?
  inputBinding:
    prefix: --min_contig_size
- id: in_prodigal_mode
  doc: "Mode of prodigal to use for gene calling. NOTE: normal\nor single mode require\
    \ genomes which are high quality\nwith low contamination and long contigs (average\n\
    length >3 Kbp). (default: meta)"
  type: string?
  inputBinding:
    prefix: --prodigal_mode
- id: in_trans_table
  doc: "Translation table for prodigal to use for gene\ncalling. (default: 11)"
  type: string?
  inputBinding:
    prefix: --trans_table
- id: in_bit_score_threshold
  doc: "minimum bitScore of search to retain hits (default:\n60)"
  type: long?
  inputBinding:
    prefix: --bit_score_threshold
- id: in_rbh_bit_score_threshold
  doc: "minimum bitScore of reverse best hits to retain hits\n(default: 350)"
  type: long?
  inputBinding:
    prefix: --rbh_bit_score_threshold
- id: in_custom_db_name
  doc: "Names of custom databases, can be usedmultiple times.\n(default: None)"
  type: string?
  inputBinding:
    prefix: --custom_db_name
- id: in_custom_fast_a_loc
  doc: "Location of fastas to annotated against, can be used\nmultiple times butmust\
    \ match nubmer of\ncustom_db_name's (default: None)"
  type: string?
  inputBinding:
    prefix: --custom_fasta_loc
- id: in_gt_db_taxonomy
  doc: "Summary file from gtdbtk taxonomy assignment from\nbins, can be used multipletimes\
    \ (default: [])"
  type: File?
  inputBinding:
    prefix: --gtdb_taxonomy
- id: in_check_m_quality
  doc: "Summary of of checkM quality assessment from bins, can\nbe used multiple times\
    \ (default: [])"
  type: string?
  inputBinding:
    prefix: --checkm_quality
- id: in_use_uniref
  doc: "Annotate these fastas against UniRef, drastically\ndecreases run time and\
    \ memory requirements (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --use_uniref
- id: in_low_mem_mode
  doc: "Skip annotating with uniref and use kofam instead of\nKEGG genes even if provided.\
    \ Drastically decreases\nmemory usage (default: False)"
  type: boolean?
  inputBinding:
    prefix: --low_mem_mode
- id: in_skip_trnascan
  doc: 'number of processors to use (default: 10)'
  type: long?
  inputBinding:
    prefix: --skip_trnascan
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'output directory (default: None)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dram:1.1.1--py_0
cwlVersion: v1.1
baseCommand:
- DRAM.py
- annotate
