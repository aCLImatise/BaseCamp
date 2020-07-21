class: CommandLineTool
id: ../../../funannotate_update.cwl
inputs:
- id: fast_a
  doc: Genome in FASTA format
  type: boolean
  inputBinding:
    prefix: --fasta
- id: gff
  doc: Annotation in GFF3 format
  type: boolean
  inputBinding:
    prefix: --gff
- id: species
  doc: Species name, use quotes for binomial, e.g. "Aspergillus fumigatus"
  type: boolean
  inputBinding:
    prefix: --species
- id: aligners
  doc: 'Aligners to use with PASA: Default: minimap2 blat [gmap]'
  type: boolean
  inputBinding:
    prefix: --aligners
- id: max_intron_len
  doc: 'Maximum intron length. Default: 3000'
  type: boolean
  inputBinding:
    prefix: --max_intronlen
- id: min_prot_len
  doc: 'Minimum protein length. Default: 50'
  type: boolean
  inputBinding:
    prefix: --min_protlen
- id: alt_transcripts
  doc: 'Expression threshold (percent) to keep alt transcripts. Default: 0.1 [0-1]'
  type: boolean
  inputBinding:
    prefix: --alt_transcripts
- id: p_two_g
  doc: NCBI p2g file (if updating NCBI annotation)
  type: boolean
  inputBinding:
    prefix: --p2g
- id: tbl_two_asn
  doc: 'Assembly parameters for tbl2asn. Example: "-l paired-ends"           '
  type: boolean
  inputBinding:
    prefix: --tbl2asn
- id: name
  doc: 'Locus tag name (assigned by NCBI?). Default: use existing  '
  type: boolean
  inputBinding:
    prefix: --name
- id: sbt
  doc: 'NCBI Submission file        '
  type: boolean
  inputBinding:
    prefix: --sbt
- id: strain
  doc: Strain name
  type: boolean
  inputBinding:
    prefix: --strain
- id: isolate
  doc: Isolate name
  type: boolean
  inputBinding:
    prefix: --isolate
- id: seq_center
  doc: 'Sequencing facilty for NCBI tbl file. Default: CFMR'
  type: boolean
  inputBinding:
    prefix: --SeqCenter
- id: seq_accession
  doc: 'Sequence accession number for NCBI tbl file. Default: 12345'
  type: boolean
  inputBinding:
    prefix: --SeqAccession
- id: cpus
  doc: 'Number of CPUs to use. Default: 2'
  type: boolean
  inputBinding:
    prefix: --cpus
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- update
