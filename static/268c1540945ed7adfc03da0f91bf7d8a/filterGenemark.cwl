class: CommandLineTool
id: filterGenemark.pl.cwl
inputs:
- id: introns
  doc: Corresponding intron file in gff format
  type: long
  inputBinding:
    prefix: --introns
- id: genemark
  doc: File in gtf format
  type: string
  inputBinding:
    prefix: --genemark
- id: output
  doc: Specifies output file name. Default is 'genemark-input_file_name.c.gtf'  and
    'genemark-input_file_name.f.good.gtf' and 'genemark-input_file_name.f.bad.gtf'
    for filtered genes included and not included  in intron file respectively
  type: string
  inputBinding:
    prefix: --output
- id: suppress
  doc: Suppress file output
  type: boolean
  inputBinding:
    prefix: --suppress
- id: filter_out_short
  doc: Filters intron containing genes as "bad" that have an RNA-Seq supported intron
    within 2*maximal CDS length of the gene with at least 20% of average intron  multiplicity
    for that gene (screens also downstream of stop, which either indicates  wrong
    reading frame, or a downstream UTR)
  type: boolean
  inputBinding:
    prefix: --filterOutShort
outputs: []
cwlVersion: v1.1
baseCommand:
- filterGenemark.pl
