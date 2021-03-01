class: CommandLineTool
id: DRAM_v.py_annotate.cwl
inputs:
- id: in_input_fast_a
  doc: 'fasta file, output from (default: None)'
  type: File?
  inputBinding:
    prefix: --input_fasta
- id: in_vir_sorter_affi_contigs
  doc: "VirSorter VIRSorter_affi-contigs.tab output file\n(default: None)"
  type: File?
  inputBinding:
    prefix: --virsorter_affi_contigs
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
- id: out_input_fast_a
  doc: 'fasta file, output from (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_input_fast_a)
- id: out_vir_sorter_affi_contigs
  doc: "VirSorter VIRSorter_affi-contigs.tab output file\n(default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_vir_sorter_affi_contigs)
- id: out_output_dir
  doc: 'output directory (default: None)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- DRAM-v.py
- annotate
