class: CommandLineTool
id: delly_filter.cwl
inputs:
- id: in_arg_somatic_mode
  doc: '[ --filter ] arg (=somatic)        Filter mode (somatic, germline)'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_arg_filtered_file
  doc: '[ --outfile ] arg (="sv.bcf")      Filtered SV BCF output file'
  type: File
  inputBinding:
    prefix: -o
- id: in_arg_min_fractional
  doc: '[ --altaf ] arg (=0.200000003)     min. fractional ALT support'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_arg_min_sv
  doc: '[ --minsize ] arg (=0)             min. SV size'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_sv_size
  doc: '[ --maxsize ] arg (=500000000)     max. SV size'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_arg_min_fraction
  doc: '[ --ratiogeno ] arg (=0.75)        min. fraction of genotyped samples'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_filter_sites_pass
  doc: '[ --pass ]                         Filter sites for PASS'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_twocolumn_sample
  doc: "[ --samples ] arg                  Two-column sample file listing sample\n\
    name and tumor or control"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_arg_min_coverage
  doc: '[ --coverage ] arg (=10)           min. coverage in tumor'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_arg_max_fractional
  doc: "[ --controlcontamination ] arg (=0)\nmax. fractional ALT support in control"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_arg_min_gq
  doc: '[ --gq ] arg (=15)                 min. median GQ for carriers and'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_arg_min_readdepth
  doc: "[ --rddup ] arg (=1.20000005)      min. read-depth ratio of carrier vs.\n\
    non-carrier for a duplication\n"
  type: boolean
  inputBinding:
    prefix: -u
- id: in_non_carriers
  doc: '-e [ --rddel ] arg (=0.800000012)     max. read-depth ratio of carrier vs. '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_filtered_file
  doc: '[ --outfile ] arg (="sv.bcf")      Filtered SV BCF output file'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_filtered_file)
cwlVersion: v1.1
baseCommand:
- delly
- filter
