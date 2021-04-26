class: CommandLineTool
id: kb_ref.cwl
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
- id: in_number_split_index
  doc: "Number of files to split the index into. If this\noption is specified, the\
    \ FASTA that is normally used\nto create an index is split into `N` approximately-\n\
    equal parts. Each of these FASTAs are indexed\nseparately. When using this option\
    \ with `--workflow\nlamanno`, the intron FASTA is split into N-1\napproximately-equal\
    \ parts and indexed, while the cDNA\nFASTA is not split and indexed."
  type: long?
  inputBinding:
    prefix: -n
- id: in_download_prebuilt_index
  doc: "Download a pre-built kallisto index (along with all\nnecessary files) instead\
    \ of building it locally"
  type: string?
  inputBinding:
    prefix: -d
- id: in_use_option_override
  doc: "Use this option to override the k-mer length of the\nindex. Usually, the k-mer\
    \ length automatically\ncalculated by `kb` provides the best results."
  type: long?
  inputBinding:
    prefix: -k
- id: in_workflow
  doc: "Type of workflow to prepare files for. Use `lamanno`\nfor RNA velocity based\
    \ on La Manno et al. 2018 logic.\nUse `nucleus` for RNA velocity on single-nucleus\
    \ RNA-\nseq reads. Use `kite` for feature barcoding. (default:\nstandard)"
  type: string?
  inputBinding:
    prefix: --workflow
- id: in_laman_no
  doc: Deprecated. Use `--workflow lamanno` instead.
  type: boolean?
  inputBinding:
    prefix: --lamanno
- id: in_overwrite
  doc: Overwrite existing kallisto index
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_path_kallisto_index
  doc: "Path to the kallisto index to be constructed. If `-n`\nis also specified,\
    \ this is the prefix for the n\nindices to construct."
  type: File?
  inputBinding:
    prefix: -i
- id: in_path_transcripttogene_mapping
  doc: Path to transcript-to-gene mapping to be generated
  type: long?
  inputBinding:
    prefix: -g
- id: in_fone
  doc: "[Optional with -d] Path to the cDNA FASTA (lamanno,\nnucleus) or mismatch\
    \ FASTA (kite) to be generated"
  type: long?
  inputBinding:
    prefix: -f1
- id: in_f_two
  doc: Path to the intron FASTA to be generated
  type: long?
  inputBinding:
    prefix: -f2
- id: in_cone
  doc: Path to generate cDNA transcripts-to-capture
  type: long?
  inputBinding:
    prefix: -c1
- id: in_c_two
  doc: Path to generate intron transcripts-to-capture
  type: long?
  inputBinding:
    prefix: -c2
- id: in_fast_a
  doc: Genomic FASTA file(s), comma-delimited
  type: string
  inputBinding:
    position: 0
- id: in_gtf
  doc: Reference GTF file(s), comma-delimited
  type: string
  inputBinding:
    position: 1
- id: in_feature
  doc: "[`kite` workflow only] Path to TSV containing barcodes\nand feature names."
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kb-python:0.26.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- kb
- ref
