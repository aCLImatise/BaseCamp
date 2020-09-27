class: CommandLineTool
id: sreformat.cwl
inputs:
- id: in_force_dna_alphabet
  doc: ': force DNA alphabet for nucleic acid sequence'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_force_rna_alphabet
  doc: ': force RNA alphabet for nucleic acid sequence'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_force_lower_case
  doc: ': force lower case'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_force_upper_case
  doc: ': force upper case'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_convert_chars_xs
  doc: ": convert non-IUPAC chars (i.e. X's) in DNA to N's for IUPAC/BLAST compatibility"
  type: boolean
  inputBinding:
    prefix: -x
- id: in_remove_iupac_codes
  doc: ": remove IUPAC codes; convert all ambiguous chars in DNA/RNA to N's"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_in_format
  doc: ': input sequence file is in format <s>'
  type: File
  inputBinding:
    prefix: --informat
- id: in_min_gap
  doc: ': remove columns containing all gaps (seqfile=alignment)'
  type: boolean
  inputBinding:
    prefix: --mingap
- id: in_no_gap
  doc: ': remove columns containing any gaps (seqfile=alignment)'
  type: boolean
  inputBinding:
    prefix: --nogap
- id: in_pfam
  doc: ': modify Stockholm format output to be in PFAM style (1 line/seq)'
  type: boolean
  inputBinding:
    prefix: --pfam
- id: in_sam
  doc: ': try to convert gaps to SAM style (seqfile=alignment)'
  type: boolean
  inputBinding:
    prefix: --sam
- id: in_sam_frac
  doc: ': convert to SAM convention; cols w/ gapfrac > x are inserts'
  type: string
  inputBinding:
    prefix: --samfrac
- id: in_gap_sym
  doc: ": convert all gaps to character '<c>'"
  type: string
  inputBinding:
    prefix: --gapsym
- id: in_w_us_sify
  doc: ': convert old format RNA structure markup lines to WUSS'
  type: boolean
  inputBinding:
    prefix: --wussify
- id: in_de_wuss
  doc: ': convert WUSS notation RNA structure markup lines to old format'
  type: boolean
  inputBinding:
    prefix: --dewuss
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_fast_a
  doc: stockholm
  type: string
  inputBinding:
    position: 0
- id: in_embl
  doc: msf
  type: string
  inputBinding:
    position: 1
- id: in_genbank
  doc: a2m
  type: string
  inputBinding:
    position: 2
- id: in_gcg
  doc: phylip
  type: string
  inputBinding:
    position: 3
- id: in_gcg_data
  doc: clustal
  type: string
  inputBinding:
    position: 4
- id: in_pir
  doc: selex
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sreformat
