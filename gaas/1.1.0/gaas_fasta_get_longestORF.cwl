class: CommandLineTool
id: gaas_fasta_get_longestORF.pl.cwl
inputs:
- id: fast_a
  doc: Nucleotide fasta file.
  type: string
  inputBinding:
    prefix: --fasta
- id: size_min
  doc: Minimum length of the ORF to be kept in AA (100 by default)
  type: string
  inputBinding:
    prefix: --size_min
- id: table
  doc: This option allows specifying the codon table to use - It expects an integer
    (1 by default = standard)
  type: string
  inputBinding:
    prefix: --table
- id: force_start_codon
  doc: This option force to keep the longest ORF that contains a start codon (M).
    Bolean
  type: boolean
  inputBinding:
    prefix: --force_start_codon
- id: force_complete
  doc: This option force to keep the longest ORF that contains a start codon (M) and
    stop codon (*). Bolean
  type: boolean
  inputBinding:
    prefix: --force_complete
- id: keep_all_orf
  doc: This option force to keep all the ORFs that meet the criteria. Bolean
  type: boolean
  inputBinding:
    prefix: --keep_all_orf
- id: v
  doc: Verbose. Useful for debugging purpose. Bolean
  type: boolean
  inputBinding:
    prefix: -v
- id: outfile
  doc: Output GFF file. If no output file is specified, the output will be written
    to STDOUT.
  type: string
  inputBinding:
    prefix: --outfile
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fasta_get_longestORF.pl
