class: CommandLineTool
id: ssu_cmemit.cwl
inputs:
- id: cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: n
  doc: ': generate <n> sequences  [10]  (n>0)'
  type: string
  inputBinding:
    prefix: -n
- id: u
  doc: ': write generated sequences as unaligned FASTA  [default]'
  type: boolean
  inputBinding:
    prefix: -u
- id: a
  doc: ': write generated sequences as a STOCKHOLM alignment'
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: ': generate a single "consensus" sequence only'
  type: boolean
  inputBinding:
    prefix: -c
- id: l
  doc: ': local; emit from a locally configured model'
  type: boolean
  inputBinding:
    prefix: -l
- id: i
  doc: ': start sequence numbering at <n>  [1]  (n>0)'
  type: string
  inputBinding:
    prefix: -i
- id: s
  doc: ': set random number generator seed to <n>  [0]  (n>=0)'
  type: string
  inputBinding:
    prefix: -s
- id: devhelp
  doc: ': show list of otherwise undocumented developer options'
  type: boolean
  inputBinding:
    prefix: --devhelp
- id: rna
  doc: ': output alignment as RNA sequence data  [default]'
  type: boolean
  inputBinding:
    prefix: --rna
- id: dna
  doc: ': output alignment as DNA (not RNA) sequence data'
  type: boolean
  inputBinding:
    prefix: --dna
- id: i_leaved
  doc: ': with -a, output alnment in interleaved Stockholm format'
  type: boolean
  inputBinding:
    prefix: --ileaved
- id: t_file
  doc: ': dump parsetrees to file <f>'
  type: string
  inputBinding:
    prefix: --tfile
- id: exp
  doc: ': exponentiate CM probabilities by <x> before emitting  (x>0)'
  type: string
  inputBinding:
    prefix: --exp
- id: begin
  doc: ': truncate alignment, begin at match column <n>  (n>=1)'
  type: string
  inputBinding:
    prefix: --begin
- id: end
  doc: ': truncate alignment,   end at match column <n>  (n>=1)'
  type: string
  inputBinding:
    prefix: --end
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-cmemit
