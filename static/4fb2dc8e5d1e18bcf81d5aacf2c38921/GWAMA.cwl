class: CommandLineTool
id: GWAMA.cwl
inputs:
- id: sex
  doc: Run gender-differentiated and gender- heterogeneity analysis. Gender info   must
    be provided in filelist file.    (second column after file names is    either
    M or F) More info in tutorial.
  type: boolean
  inputBinding:
    prefix: --sex
- id: filter
  doc: 'Set a filtering based on column       header. It needs 3 arguments: column  name,
    equation [>,<,>=,<=,==,!=],     filter value. Multiple filters can be set.                                 '
  type: boolean
  inputBinding:
    prefix: --filter
- id: name_marker
  doc: alternative header to marker name col
  type: boolean
  inputBinding:
    prefix: --name_marker
- id: name_strand
  doc: 'alternative header to strand column  '
  type: boolean
  inputBinding:
    prefix: --name_strand
- id: name_n
  doc: alternative header to sample size col
  type: boolean
  inputBinding:
    prefix: --name_n
- id: name_eaf
  doc: 'alternative header to EAF column     '
  type: boolean
  inputBinding:
    prefix: --name_eaf
- id: name_beta
  doc: 'alternative header to beta column    '
  type: boolean
  inputBinding:
    prefix: --name_beta
- id: name_se
  doc: 'alternative header to std. err. col  '
  type: boolean
  inputBinding:
    prefix: --name_se
- id: name_or
  doc: 'alternative header to OR column      '
  type: boolean
  inputBinding:
    prefix: --name_or
- id: name_or_95l
  doc: 'alternative header to OR 95L column  '
  type: boolean
  inputBinding:
    prefix: --name_or_95l
- id: name_or_95u
  doc: 'alternative header to OR 95U column  '
  type: boolean
  inputBinding:
    prefix: --name_or_95u
outputs: []
cwlVersion: v1.1
baseCommand:
- GWAMA
