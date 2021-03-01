class: CommandLineTool
id: coverm_make.cwl
inputs:
- id: in_output_directory
  doc: Where generated BAM files will go
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_reference
  doc: "..             FASTA file of contigs e.g. concatenated\ngenomes or assembly,\
    \ or minimap2 index\n(with --minimap2-reference-is-index),\nor BWA index stem\
    \ (with -p bwa-mem).\nIf multiple references FASTA files are\nprovided and --sharded\
    \ is specified,\nthen reads will be mapped to references\nseparately as sharded\
    \ BAMs."
  type: File?
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: Number of threads to use for mapping
  type: long?
  inputBinding:
    prefix: --threads
- id: in_forward_fastaq_files
  doc: ..                          Forward FASTA/Q file(s) for mapping
  type: File?
  inputBinding:
    prefix: '-1'
- id: in_reverse_fastaq_files
  doc: ..                          Reverse FASTA/Q file(s) for mapping
  type: File?
  inputBinding:
    prefix: '-2'
- id: in_coupled
  doc: "<PATH> ..        One or more pairs of forward and reverse\nFASTA/Q files for\
    \ mapping in order\n<sample1_R1.fq.gz> <sample1_R2.fq.gz>\n<sample2_R1.fq.gz>\
    \ <sample2_R2.fq.gz> .."
  type: File?
  inputBinding:
    prefix: --coupled
- id: in_interleaved
  doc: ..               Interleaved FASTA/Q files(s) for mapping.
  type: File?
  inputBinding:
    prefix: --interleaved
- id: in_single
  doc: ..                    Unpaired FASTA/Q files(s) for mapping.
  type: File?
  inputBinding:
    prefix: --single
- id: in_mapper
  doc: "Underlying mapping software used\n(\"minimap2-sr\", \"bwa-mem\", \"minimap2-ont\"\
    ,\n\"minimap2-pb\", or \"minimap2-no-preset\").\nminimap2 -sr, -ont, -pb, -no-preset\
    \ specify\n'-x' preset of minimap2 to be used\n(with map-ont, map-pb for -ont,\
    \ -pb).\n[default: \"minimap2-sr\"]"
  type: long?
  inputBinding:
    prefix: --mapper
- id: in_minimap_two_params
  doc: "Extra parameters to provide to minimap2,\nboth indexing command (if used)\
    \ and for\nmapping. Note that usage of this parameter\nhas security implications\
    \ if untrusted input\nis specified. '-a' is always specified.\n[default \"\"]"
  type: long?
  inputBinding:
    prefix: --minimap2-params
- id: in_minimap_two_reference_is_index
  doc: "Treat reference as a minimap2 database, not\nas a FASTA file."
  type: boolean?
  inputBinding:
    prefix: --minimap2-reference-is-index
- id: in_bwa_params
  doc: "Extra parameters to provide to BWA. Note\nthat usage of this parameter has\
    \ security\nimplications if untrusted input is specified.\n[default \"\"]"
  type: string?
  inputBinding:
    prefix: --bwa-params
- id: in_discard_unmapped
  doc: Exclude unmapped reads from generated BAM files.
  type: boolean?
  inputBinding:
    prefix: --discard-unmapped
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Where generated BAM files will go
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- coverm
- make
