class: CommandLineTool
id: UMI_BC_error_correct.py.cwl
inputs:
- id: input_csv
  doc: Input CSV
  type: string
  inputBinding:
    position: 0
- id: output_csv
  doc: Output CSV
  type: string
  inputBinding:
    position: 1
- id: bc_rank_file
  doc: (Optional) cell barcode rank file from short read data
  type: string
  inputBinding:
    prefix: --bc_rank_file
- id: only_top_ranked
  doc: (Optional) only output those that are top-ranked. Must have --bc_rank_file.
  type: boolean
  inputBinding:
    prefix: --only_top_ranked
- id: drop_seq_clean_report
  doc: 'Output from running DetectBeadSubstitutionErrors in DropSeq cookbook (ex:
    star_gene_exon_tagged_clean_subs titution.bam_report.txt)'
  type: string
  inputBinding:
    prefix: --dropseq_clean_report
- id: drop_seq_synthesis_report
  doc: 'Output from running DetectBeadSynthesisErrors in DropSeq cookbook (ex: star_gene_exon_tagged_clean_subs
    titution_clean2.bam_report.txt)'
  type: string
  inputBinding:
    prefix: --dropseq_synthesis_report
outputs: []
cwlVersion: v1.1
baseCommand:
- UMI_BC_error_correct.py
