class: CommandLineTool
id: sixgill_filter.cwl
inputs:
- id: meta_peptide_file
  doc: input metapeptide database file
  type: string
  inputBinding:
    position: 0
- id: out
  doc: output metapeptide database file
  type: string
  inputBinding:
    prefix: --out
- id: minor_f_length
  doc: minimum ORF length
  type: long
  inputBinding:
    prefix: --minorflength
- id: mina_a_seq_length
  doc: minimum AA sequence length
  type: long
  inputBinding:
    prefix: --minaaseqlength
- id: min_read_count
  doc: minimum read count
  type: long
  inputBinding:
    prefix: --minreadcount
- id: min_qual_score
  doc: minimum basecall quality
  type: long
  inputBinding:
    prefix: --minqualscore
- id: min_longest_tryp_peple_n
  doc: minimum length of the longest tryptic peptide
  type: long
  inputBinding:
    prefix: --minlongesttryppeplen
- id: min_meta_gene_score
  doc: Minimum MetaGene score (-1 for none)
  type: long
  inputBinding:
    prefix: --minmetagenescore
- id: max_meta_peptides
  doc: maximum number of metapeptides to write
  type: long
  inputBinding:
    prefix: --maxmetapeptides
- id: no_gzip_out
  doc: Write plaintetxt (non-gzipped) output (default gzipped)
  type: boolean
  inputBinding:
    prefix: --nogzipout
- id: debug
  doc: Enable debug logging
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- sixgill_filter
