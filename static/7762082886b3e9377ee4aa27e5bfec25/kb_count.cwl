class: CommandLineTool
id: kb_count.cwl
inputs:
- id: in_tmp
  doc: Override default temporary directory
  type: Directory?
  inputBinding:
    prefix: --tmp
- id: in_keep_tmp
  doc: Do not delete the tmp directory
  type: boolean?
  inputBinding:
    prefix: --keep-tmp
- id: in_verbose
  doc: Print debugging information
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_kallis_to
  doc: 'Path to kallisto binary to use (default: kallisto)'
  type: File?
  inputBinding:
    prefix: --kallisto
- id: in_bus_tools
  doc: 'Path to bustools binary to use (default: bustools)'
  type: File?
  inputBinding:
    prefix: --bustools
- id: in_path_output_directory
  doc: 'Path to output directory (default: current directory)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_path_file_correct
  doc: "Path to file of whitelisted barcodes to correct to. If\nnot provided and bustools\
    \ supports the technology, a\npre-packaged whitelist is used. Otherwise, or if\n\
    'None', is provided, the bustools whitelist command is\nused. (`kb --list` to\
    \ view whitelists)"
  type: File?
  inputBinding:
    prefix: -w
- id: in_number_threads_use
  doc: 'Number of threads to use (default: 8)'
  type: long?
  inputBinding:
    prefix: -t
- id: in_maximum_memory_used
  doc: 'Maximum memory used (default: 4G)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_workflow
  doc: "{standard,lamanno,nucleus,kite,kite:10xFB}\nType of workflow. Use `lamanno`\
    \ for RNA velocity based\non La Manno et al. 2018 logic. Use `nucleus` for RNA\n\
    velocity on single-nucleus RNA-seq reads. Use `kite`\nfor feature barcoding. Use\
    \ `kite:10xFB` for 10x\nGenomics Feature Barcoding technology. (default:\nstandard)"
  type: boolean?
  inputBinding:
    prefix: --workflow
- id: in_mm
  doc: Include reads that pseudoalign to multiple genes.
  type: boolean?
  inputBinding:
    prefix: --mm
- id: in_tcc
  doc: Generate a TCC matrix instead of a gene count matrix.
  type: boolean?
  inputBinding:
    prefix: --tcc
- id: in_filter
  doc: "[{bustools}]\nProduce a filtered gene count matrix (default:\nbustools)"
  type: boolean?
  inputBinding:
    prefix: --filter
- id: in_overwrite
  doc: Overwrite existing output.bus file
  type: File?
  inputBinding:
    prefix: --overwrite
- id: in_dry_run
  doc: Dry run
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_laman_no
  doc: Deprecated. Use `--workflow lamanno` instead.
  type: boolean?
  inputBinding:
    prefix: --lamanno
- id: in_nucleus
  doc: Deprecated. Use `--workflow nucleus` instead.
  type: boolean?
  inputBinding:
    prefix: --nucleus
- id: in_loom
  doc: Generate loom file from count matrix
  type: boolean?
  inputBinding:
    prefix: --loom
- id: in_h_five_ad
  doc: Generate h5ad file from count matrix
  type: boolean?
  inputBinding:
    prefix: --h5ad
- id: in_cell_ranger
  doc: Convert count matrices to cellranger-compatible format
  type: boolean?
  inputBinding:
    prefix: --cellranger
- id: in_report
  doc: "Generate a HTML report containing run statistics and\nbasic plots. Using this\
    \ option may cause kb to use\nmore memory than specified with the `-m` option.\
    \ It\nmay also cause it to crash due to memory."
  type: boolean?
  inputBinding:
    prefix: --report
- id: in_path_kallisto_commadelimited
  doc: Path to kallisto index/indices, comma-delimited
  type: File?
  inputBinding:
    prefix: -i
- id: in_path_transcripttogene_mapping
  doc: Path to transcript-to-gene mapping
  type: long?
  inputBinding:
    prefix: -g
- id: in_singlecell_technology_used
  doc: Single-cell technology used (`kb --list` to view)
  type: string?
  inputBinding:
    prefix: -x
- id: in_cone
  doc: Path to cDNA transcripts-to-capture
  type: long?
  inputBinding:
    prefix: -c1
- id: in_c_two
  doc: Path to intron transcripts-to-captured
  type: long?
  inputBinding:
    prefix: -c2
- id: in_fast_qs
  doc: "FASTQ files. For technology `SMARTSEQ`, all input\nFASTQs are alphabetically\
    \ sorted by path and paired in\norder, and cell IDs are assigned as incrementing\n\
    integers starting from zero. A single batch TSV with\ncell ID, read 1, and read\
    \ 2 as columns can be provided\nto override this behavior."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_directory
  doc: 'Path to output directory (default: current directory)'
  type: File?
  outputBinding:
    glob: $(inputs.in_path_output_directory)
- id: out_overwrite
  doc: Overwrite existing output.bus file
  type: File?
  outputBinding:
    glob: $(inputs.in_overwrite)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kb-python:0.26.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- kb
- count
