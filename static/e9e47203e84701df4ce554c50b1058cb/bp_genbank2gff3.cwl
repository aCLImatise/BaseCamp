class: CommandLineTool
id: bp_genbank2gff3.pl.cwl
inputs:
- id: format
  doc: '-f  Input format (SeqIO types): GenBank, Swiss or Uniprot, EMBL work (GenBank
    is default)'
  type: boolean
  inputBinding:
    prefix: --format
- id: gff_version
  doc: 3 is default, 2 and 2.5 and other Bio::Tools::GFF versions available
  type: boolean
  inputBinding:
    prefix: --GFF_VERSION
- id: quiet
  doc: "don't talk about what is being processed "
  type: boolean
  inputBinding:
    prefix: --quiet
- id: type_source
  doc: SO sequence type for source (e.g. chromosome; region; contig)
  type: boolean
  inputBinding:
    prefix: --typesource
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_genbank2gff3.pl
