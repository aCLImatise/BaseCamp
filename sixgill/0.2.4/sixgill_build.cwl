class: CommandLineTool
id: sixgill_build.cwl
inputs:
- id: fast_q_files
  doc: input fastq file(s), bgzipped
  type: string
  inputBinding:
    position: 0
- id: minlength
  doc: min AA length of a metapeptide
  type: long
  inputBinding:
    prefix: --minlength
- id: min_qual_score
  doc: min base-call phred score across any NT in a metapeptide
  type: long
  inputBinding:
    prefix: --minqualscore
- id: meta_gene_file
  doc: input MetaGene Annotator output file. Records must be in same linear order
    as reads in fastqfiles
  type: string
  inputBinding:
    prefix: --metagenefile
- id: min_meta_gene_score
  doc: minimum MetaGene score
  type: long
  inputBinding:
    prefix: --minmetagenescore
- id: minor_f_length
  doc: min length of ORF-portion
  type: long
  inputBinding:
    prefix: --minorflength
- id: min_longest_tryp_peple_n
  doc: minimum length of the longest tryptic peptide
  type: long
  inputBinding:
    prefix: --minlongesttryppeplen
- id: max_reads
  doc: stop early if we hit this many reads
  type: long
  inputBinding:
    prefix: --maxreads
- id: min_read_count
  doc: minimum read count
  type: long
  inputBinding:
    prefix: --minreadcount
- id: out
  doc: Output metapeptide database file
  type: string
  inputBinding:
    prefix: --out
- id: out_fast_a
  doc: Output metapeptide fasta database file
  type: string
  inputBinding:
    prefix: --outfasta
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
- sixgill_build
