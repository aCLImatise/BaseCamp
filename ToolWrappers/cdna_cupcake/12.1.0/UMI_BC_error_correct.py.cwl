class: CommandLineTool
id: UMI_BC_error_correct.py.cwl
inputs:
- id: in_bc_rank_file
  doc: (Optional) cell barcode rank file from short read data
  type: File
  inputBinding:
    prefix: --bc_rank_file
- id: in_only_top_ranked
  doc: "(Optional) only output those that are top-ranked. Must\nhave --bc_rank_file."
  type: boolean
  inputBinding:
    prefix: --only_top_ranked
- id: in_drop_seq_clean_report
  doc: "Output from running DetectBeadSubstitutionErrors in\nDropSeq cookbook (ex:\
    \ star_gene_exon_tagged_clean_subs\ntitution.bam_report.txt)"
  type: string
  inputBinding:
    prefix: --dropseq_clean_report
- id: in_drop_seq_synthesis_report
  doc: "Output from running DetectBeadSynthesisErrors in\nDropSeq cookbook (ex: star_gene_exon_tagged_clean_subs\n\
    titution_clean2.bam_report.txt)\n"
  type: long
  inputBinding:
    prefix: --dropseq_synthesis_report
- id: in_input_csv
  doc: Input CSV
  type: string
  inputBinding:
    position: 0
- id: in_output_csv
  doc: Output CSV
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- UMI_BC_error_correct.py
