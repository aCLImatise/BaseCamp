class: CommandLineTool
id: ../../../sixgill_build.cwl
inputs:
- id: in_meta_gene_file
  doc: specified, start with the output of MetaGene Annotator
  type: string
  inputBinding:
    prefix: --metagenefile
- id: in_minlength
  doc: min AA length of a metapeptide
  type: long
  inputBinding:
    prefix: --minlength
- id: in_min_qual_score
  doc: "min base-call phred score across any NT in a\nmetapeptide"
  type: long
  inputBinding:
    prefix: --minqualscore
- id: in_min_meta_gene_score
  doc: minimum MetaGene score
  type: long
  inputBinding:
    prefix: --minmetagenescore
- id: in_minor_f_length
  doc: min length of ORF-portion
  type: long
  inputBinding:
    prefix: --minorflength
- id: in_min_longest_tryp_peple_n
  doc: minimum length of the longest tryptic peptide
  type: long
  inputBinding:
    prefix: --minlongesttryppeplen
- id: in_max_reads
  doc: stop early if we hit this many reads
  type: long
  inputBinding:
    prefix: --maxreads
- id: in_min_read_count
  doc: minimum read count
  type: long
  inputBinding:
    prefix: --minreadcount
- id: in_out
  doc: Output metapeptide database file
  type: File
  inputBinding:
    prefix: --out
- id: in_out_fast_a
  doc: Output metapeptide fasta database file
  type: File
  inputBinding:
    prefix: --outfasta
- id: in_no_gzip_out
  doc: "Write plaintetxt (non-gzipped) output (default\ngzipped)"
  type: boolean
  inputBinding:
    prefix: --nogzipout
- id: in_debug
  doc: Enable debug logging
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output metapeptide database file
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_fast_a
  doc: Output metapeptide fasta database file
  type: File
  outputBinding:
    glob: $(inputs.in_out_fast_a)
cwlVersion: v1.1
baseCommand:
- sixgill_build
