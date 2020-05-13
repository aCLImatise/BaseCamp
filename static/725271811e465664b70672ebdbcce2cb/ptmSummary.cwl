class: CommandLineTool
id: ptmSummary.py.cwl
inputs:
- id: p
  doc: Threads to run
  type: string
  inputBinding:
    prefix: -p
- id: no_log2
  doc: Do not log2 normalize quantification values.
  type: boolean
  inputBinding:
    prefix: --no-log2
- id: no_median
  doc: Do not normalize quantification values by the median of the experiment.
  type: boolean
  inputBinding:
    prefix: --no-median
- id: wp
  doc: The whole proteome inference file, if it exists. For multiple replicates, separate
    by spaces.
  type: string[]
  inputBinding:
    prefix: --wp
- id: non_mod_norm
  doc: Normalize the data by the non-modified peptides.
  type: boolean
  inputBinding:
    prefix: --non-mod-norm
- id: site_file
  doc: The output path for the file with sumamries at the site level.
  type: string
  inputBinding:
    prefix: --site-file
- id: peptide_file
  doc: The output path for the file with sumamries at the site and peptide level.
  type: string
  inputBinding:
    prefix: --peptide-file
- id: inference
  doc: The protein inference file (your peptide file with gene/protein annotations).
    For multiple files, separate by spaces (must be in same order as mods).
  type: string[]
  inputBinding:
    prefix: --inference
- id: gene
  doc: The Gene column name
  type: string
  inputBinding:
    prefix: --gene
- id: protein
  doc: The Protein column name
  type: string
  inputBinding:
    prefix: --protein
- id: peptide
  doc: The Peptide column name
  type: string
  inputBinding:
    prefix: --peptide
- id: quant
  doc: The name of quantification columns (such as Heavy/Light). Separate multiple
    columns by spaces
  type: string[]
  inputBinding:
    prefix: --quant
- id: mods
  doc: The modifications file (the file with sites, peptides). For multiple files,
    separate by spaces (must be in same order as inference).
  type: string[]
  inputBinding:
    prefix: --mods
- id: site_protein
  doc: The mod file protein column name
  type: string
  inputBinding:
    prefix: --site-protein
outputs: []
cwlVersion: v1.1
baseCommand:
- ptmSummary.py
