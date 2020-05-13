class: CommandLineTool
id: place_seqs.py.cwl
inputs:
- id: study_fast_a
  doc: FASTA of unaligned study sequences.
  type: File
  inputBinding:
    prefix: --study_fasta
- id: ref_dir
  doc: 'Directory containing reference sequence files (default: /tmp/tmpjqcugf20/lib/python3.6/site-
    packages/picrust2/default_files/prokaryotic/pro_ref). Please see the online documentation
    for how to name the files in this directory in order to use custom reference files.'
  type: File
  inputBinding:
    prefix: --ref_dir
- id: out_tree
  doc: Name of final output tree.
  type: File
  inputBinding:
    prefix: --out_tree
- id: processes
  doc: 'Number of processes to run in parallel (default: 1). Note that this refers
    to multithreading rather than multiprocessing when running EPA-ng and GAPPA.'
  type: string
  inputBinding:
    prefix: --processes
- id: intermediate
  doc: Output folder for intermediate files (will be deleted otherwise).
  type: File
  inputBinding:
    prefix: --intermediate
- id: min_align
  doc: 'Proportion of the total length of an input query sequence that must align
    with reference sequences. Any sequences with lengths below this value after making
    an alignment with reference sequences will be excluded from the placement and
    all subsequent steps. (default: 0).'
  type: long
  inputBinding:
    prefix: --min_align
- id: chunk_size
  doc: 'Number of query seqs to read in at once for EPA-ng (default: 5000).'
  type: string
  inputBinding:
    prefix: --chunk_size
- id: verbose
  doc: If specified, print out wrapped commands and other details to screen.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- place_seqs.py
