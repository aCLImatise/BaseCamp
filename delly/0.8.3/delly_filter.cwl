class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/delly_filter.cwl
inputs:
- id: arg_somatic_filter
  doc: '[ --filter ] arg (=somatic)        Filter mode (somatic, germline)'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg_filtered_sv
  doc: '[ --outfile ] arg (="sv.bcf")      Filtered SV BCF output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_min_fractional
  doc: '[ --altaf ] arg (=0.200000003)     min. fractional ALT support'
  type: boolean
  inputBinding:
    prefix: -a
- id: arg_min_sv
  doc: '[ --minsize ] arg (=0)             min. SV size'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_max_sv
  doc: '[ --maxsize ] arg (=500000000)     max. SV size'
  type: boolean
  inputBinding:
    prefix: -n
- id: arg__min
  doc: '[ --ratiogeno ] arg (=0.75)        min. fraction of genotyped samples'
  type: boolean
  inputBinding:
    prefix: -r
- id: filter_sites_pass
  doc: '[ --pass ]                         Filter sites for PASS'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_twocolumn_file
  doc: '[ --samples ] arg                  Two-column sample file listing sample  name
    and tumor or control'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_min_coverage
  doc: '[ --coverage ] arg (=10)           min. coverage in tumor'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_max_fractional
  doc: '[ --controlcontamination ] arg (=0) max. fractional ALT support in control'
  type: boolean
  inputBinding:
    prefix: -c
- id: arg_min_gq
  doc: '[ --gq ] arg (=15)                 min. median GQ for carriers and  non-carriers'
  type: boolean
  inputBinding:
    prefix: -q
- id: arg_max_readdepth
  doc: '[ --rddel ] arg (=0.800000012)     max. read-depth ratio of carrier vs.  non-carrier
    for a deletion'
  type: boolean
  inputBinding:
    prefix: -e
- id: arg_min_readdepth
  doc: '[ --rddup ] arg (=1.20000005)      min. read-depth ratio of carrier vs.  non-carrier
    for a duplication'
  type: boolean
  inputBinding:
    prefix: -u
- id: input_dot_bcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- delly
- filter
