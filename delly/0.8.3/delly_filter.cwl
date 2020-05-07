class: CommandLineTool
id: delly_filter.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_bcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: f
  doc: '[ --filter ] arg (=somatic)        Filter mode (somatic, germline)'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: '[ --outfile ] arg (="sv.bcf")      Filtered SV BCF output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: a
  doc: '[ --altaf ] arg (=0.200000003)     min. fractional ALT support'
  type: boolean
  inputBinding:
    prefix: -a
- id: m
  doc: '[ --minsize ] arg (=0)             min. SV size'
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: '[ --maxsize ] arg (=500000000)     max. SV size'
  type: boolean
  inputBinding:
    prefix: -n
- id: r
  doc: '[ --ratiogeno ] arg (=0.75)        min. fraction of genotyped samples'
  type: boolean
  inputBinding:
    prefix: -r
- id: p
  doc: '[ --pass ]                         Filter sites for PASS'
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: '[ --samples ] arg                  Two-column sample file listing sample  name
    and tumor or control'
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: '[ --coverage ] arg (=10)           min. coverage in tumor'
  type: boolean
  inputBinding:
    prefix: -v
- id: c
  doc: '[ --controlcontamination ] arg (=0) max. fractional ALT support in control'
  type: boolean
  inputBinding:
    prefix: -c
- id: q
  doc: '[ --gq ] arg (=15)                 min. median GQ for carriers and  non-carriers'
  type: boolean
  inputBinding:
    prefix: -q
- id: e
  doc: '[ --rddel ] arg (=0.800000012)     max. read-depth ratio of carrier vs.  non-carrier
    for a deletion'
  type: boolean
  inputBinding:
    prefix: -e
- id: u
  doc: '[ --rddup ] arg (=1.20000005)      min. read-depth ratio of carrier vs.  non-carrier
    for a duplication'
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- delly
- filter
