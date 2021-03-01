class: CommandLineTool
id: sixgill_filter.cwl
inputs:
- id: in_out
  doc: output metapeptide database file
  type: File?
  inputBinding:
    prefix: --out
- id: in_minor_f_length
  doc: minimum ORF length
  type: long?
  inputBinding:
    prefix: --minorflength
- id: in_mina_a_seq_length
  doc: minimum AA sequence length
  type: long?
  inputBinding:
    prefix: --minaaseqlength
- id: in_min_read_count
  doc: minimum read count
  type: long?
  inputBinding:
    prefix: --minreadcount
- id: in_min_qual_score
  doc: minimum basecall quality
  type: long?
  inputBinding:
    prefix: --minqualscore
- id: in_min_longest_tryp_peple_n
  doc: minimum length of the longest tryptic peptide
  type: long?
  inputBinding:
    prefix: --minlongesttryppeplen
- id: in_min_meta_gene_score
  doc: Minimum MetaGene score (-1 for none)
  type: long?
  inputBinding:
    prefix: --minmetagenescore
- id: in_max_meta_peptides
  doc: maximum number of metapeptides to write
  type: long?
  inputBinding:
    prefix: --maxmetapeptides
- id: in_no_gzip_out
  doc: "Write plaintetxt (non-gzipped) output (default\ngzipped)"
  type: boolean?
  inputBinding:
    prefix: --nogzipout
- id: in_debug
  doc: Enable debug logging
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output metapeptide database file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- sixgill_filter
