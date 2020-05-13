class: CommandLineTool
id: eval_predictions.cwl
inputs:
- id: l
  doc: '[OPTIONS] '
  type: string
  inputBinding:
    prefix: -l
- id: nucleotide
  doc: (Sn)
  type: string
  inputBinding:
    prefix: '- nucleotide'
- id: nucleotide
  doc: (Sp)
  type: string
  inputBinding:
    prefix: '- nucleotide'
- id: approximate
  doc: (AC)
  type: string
  inputBinding:
    prefix: '- approximate'
- id: correlation
  doc: (CC)
  type: string
  inputBinding:
    prefix: '- correlation'
- id: exon
  doc: (ESn)
  type: string
  inputBinding:
    prefix: '- exon'
- id: exon
  doc: (ESp)
  type: string
  inputBinding:
    prefix: '- exon'
- id: proportion
  doc: real exons correctly predicted (CRa)
  type: string
  inputBinding:
    prefix: '- proportion'
- id: proportion
  doc: real exons partially predicted (PCa)
  type: string
  inputBinding:
    prefix: '- proportion'
- id: proportion
  doc: real exons with overlapping predictions (OLa)
  type: string
  inputBinding:
    prefix: '- proportion'
- id: missed
  doc: (ME)
  type: string
  inputBinding:
    prefix: '- missed'
- id: proportion
  doc: predicted exons that are correct (CRp)
  type: string
  inputBinding:
    prefix: '- proportion'
- id: proportion
  doc: predicted exons that are partially correct (PCp)
  type: string
  inputBinding:
    prefix: '- proportion'
- id: proportion
  doc: predicted exons that overlap real ones (OLp)
  type: string
  inputBinding:
    prefix: '- proportion'
- id: wrong
  doc: (WE)
  type: string
  inputBinding:
    prefix: '- wrong'
- id: r
  doc: '(required) List of names of files defining real genes (GFF). '
  type: string
  inputBinding:
    prefix: -r
- id: p
  doc: (required) List of names of files defining predicted genes (GFF).  Must correspond
    in order to <real_fname_list>.
  type: string
  inputBinding:
    prefix: -p
- id: l
  doc: (required) List of lengths of sequences.  Needed to compute certain nucleotide-level
    statistics.
  type: string
  inputBinding:
    prefix: -l
- id: f
  doc: List of names of all features denoting exon regions.  By default, equal to
    the single name "CDS".
  type: string
  inputBinding:
    prefix: -f
- id: d
  doc: Dump full coords of correct, partially correct, wrong, missed,  and overlapping
    exons to a set of files having the specified  file name prefix.
  type: string
  inputBinding:
    prefix: -d
- id: n
  doc: Also report stats on "nearly correct" exons, that is, incorrect exons whose
    boundaries are within <nbases> of being correct. Columns will be labeled "NCa"
    and "NCp".
  type: string
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- eval_predictions
