class: CommandLineTool
id: snoStrip.pl.cwl
inputs:
- id: d
  doc: '|dir             Output directory where all retrieved information will be
    stored. [REQUIRED]'
  type: boolean
  inputBinding:
    prefix: -d
- id: k
  doc: "|kingdom         Specify the kingdom which shall be analyzed. 'pro' ... Protostomia\
    \ 'deu' ... Deuterostomia 'fun' ... Fungi 'pla' ... Plants [REQUIRED]"
  type: boolean
  inputBinding:
    prefix: -k
- id: g
  doc: '|genome          Genome source to search for potential snoRNAs.'
  type: boolean
  inputBinding:
    prefix: -g
- id: n
  doc: "|name            Name of the organism: 'Genus epithet'."
  type: boolean
  inputBinding:
    prefix: -n
- id: c
  doc: '|clan            Single snoRNA families to search for, e.g., -c CD_12 HACA_100  [analyze
    CD_12.fa and HACA_100.fa] -c CD_1* HACA*     [analyze CD_10.fa, CD_11.fa, etc.
    and ALL HACA families] '
  type: boolean
  inputBinding:
    prefix: -c
- id: j
  doc: '|infernal        Incorporate infernal in the homology-based  search procedure.'
  type: boolean
  inputBinding:
    prefix: -j
- id: q
  doc: '|quiet           Suppress unnecessary output.'
  type: boolean
  inputBinding:
    prefix: -q
- id: f
  doc: '|force           Force to search for novel snoRNA candidates in every organism,
    even though there are already species-specific sequences in the current family.'
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: '|sequences       Directory of targetRNAs.'
  type: boolean
  inputBinding:
    prefix: -s
- id: a
  doc: '|alignments      Directory of targetRNA alignments.'
  type: boolean
  inputBinding:
    prefix: -a
- id: p
  doc: '|profiles        Directory of targetRNA profiles.'
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- snoStrip.pl
