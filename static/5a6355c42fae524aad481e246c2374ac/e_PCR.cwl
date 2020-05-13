class: CommandLineTool
id: e_PCR.cwl
inputs:
- id: t
  doc: display time
  type: string
  inputBinding:
    position: 0
- id: l
  doc: display fasta identifiers
  type: string
  inputBinding:
    position: 1
- id: o
  doc: "display sequence offset (currently: 3' position of first primer)"
  type: string
  inputBinding:
    position: 2
- id: p
  doc: display percent of sequence processed
  type: string
  inputBinding:
    position: 3
- id: s
  doc: report every sequence start
  type: string
  inputBinding:
    position: 4
- id: e
  doc: report every sequence end
  type: string
  inputBinding:
    position: 5
- id: s
  doc: newline after sequence start report
  type: string
  inputBinding:
    position: 6
- id: e
  doc: newline after sequence end report
  type: string
  inputBinding:
    position: 7
- id: p
  doc: newline after sequence progress report
  type: string
  inputBinding:
    position: 8
- id: m
  doc: '##   Margin (default 50)'
  type: boolean
  inputBinding:
    prefix: -m
- id: w
  doc: '##   Wordsize  (default 7)'
  type: boolean
  inputBinding:
    prefix: -w
- id: n
  doc: '##   Max mismatches allowed (default 0)'
  type: boolean
  inputBinding:
    prefix: -n
- id: g
  doc: '##   Max indels allowed (default 0)'
  type: boolean
  inputBinding:
    prefix: -g
- id: f
  doc: '##   Use ## discontiguos words, slow if ##>1'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: '##   Set output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: '##   Set output format: 1 - classic, range (pos1..pos2) 2 - classic, midpoint
    3 - tabular 4 - tabular with alignment in comments (slow)'
  type: boolean
  inputBinding:
    prefix: -t
- id: d
  doc: '##-## Set default size range (default 100-350)'
  type: boolean
  inputBinding:
    prefix: -d
- id: p
  doc: +-   Turn hits postprocess on/off
  type: boolean
  inputBinding:
    prefix: -p
- id: v
  doc: '##   Verbosity flags'
  type: boolean
  inputBinding:
    prefix: -v
- id: a
  doc: '|f  Use presize alignmens (only if gaps>0), slow a - Allways or f - as Fallback'
  type: string
  inputBinding:
    prefix: -a
- id: x
  doc: +-   Use 5'-end lowercase masking of primers (default -)
  type: boolean
  inputBinding:
    prefix: -x
- id: u
  doc: +-   Uppercase all primers (default -)
  type: boolean
  inputBinding:
    prefix: -u
- id: mid
  doc: Same as T=2
  type: boolean
  inputBinding:
    prefix: -mid
outputs: []
cwlVersion: v1.1
baseCommand:
- e-PCR
