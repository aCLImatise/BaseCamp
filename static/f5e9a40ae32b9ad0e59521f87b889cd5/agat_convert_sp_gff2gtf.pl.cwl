class: CommandLineTool
id: agat_convert_sp_gff2gtf.pl.cwl
inputs:
- id: in_gff
  doc: Input GFF file that will be read
  type: File?
  inputBinding:
    prefix: --gff
- id: in_gtf_version
  doc: "of the GTF output. Default 3 (for GTF3)\nGTF3 (9 feature types accepted):\
    \ gene, transcript, exon, CDS,\nSelenocysteine, start_codon, stop_codon, three_prime_utr\
    \ and\nfive_prime_utr\nGTF2.5 (8 feature types accepted): gene, transcript, exon,\
    \ CDS,\nUTR, start_codon, stop_codon, Selenocysteine\nGTF2.2 (9 feature types\
    \ accepted): CDS, start_codon, stop_codon,\n5UTR, 3UTR, inter, inter_CNS, intron_CNS\
    \ and exon\nGTF2.1 (6 feature types accepted): CDS, start_codon, stop_codon,\n\
    exon, 5UTR, 3UTR\nGTF2 (4 feature types accepted): CDS, start_codon, stop_codon,\n\
    exon\nGTF1 (5 feature types accepted): CDS, start_codon, stop_codon,\nexon, intron"
  type: double?
  inputBinding:
    prefix: --gtf_version
- id: in_relax
  doc: "option avoid to apply strict GTF format specification. All\nfeature type will\
    \ be kept. No modification e.g. mRNA to\ntranscript. No filtering i.e. feature\
    \ type not accepted by GTF\nformat are kept. gene_id and transcript_id attributes\
    \ will be\nadded, and the attributes will follow the GTF formating."
  type: string?
  inputBinding:
    prefix: --relax
- id: in_outfile
  doc: "Output GTF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_title
  doc: ': _gff25_string'
  type: string
  inputBinding:
    position: 0
- id: in_usage
  doc: ': $gffstr = $gffio->_gff2_string'
  type: string
  inputBinding:
    position: 1
- id: in_args
  doc: ': A Bio::SeqFeatureI implementing object to be GFF2.5-stringified'
  type: string
  inputBinding:
    position: 0
- id: in_agat_convert_sp_gfftwogtfdotpl
  doc: 'Description:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "Output GTF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- agat_convert_sp_gff2gtf.pl
