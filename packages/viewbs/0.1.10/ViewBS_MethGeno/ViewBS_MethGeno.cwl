class: CommandLineTool
id: ViewBS_MethGeno.cwl
inputs:
- id: in_genome_length
  doc: "[required]\n- chromosome length information. Can be generated using 'samtools\
    \ faidx\nref.fa'"
  type: boolean?
  inputBinding:
    prefix: --genomeLength
- id: in_sample
  doc: "[required]\n- Provide the sample information. [Format: methlationfile,samplename]\n\
    It is possible to specify more than one sample pair by using the options\n--sample\
    \ more than once. The methylation information can also be read from\na TEXT file.\
    \ Instead of giving an explicit sample information pairs,\nyou need to write \"\
    file:\" followed by the name of the TEXT file.\nSee details at: https://github.com/readbio/ViewBS"
  type: boolean?
  inputBinding:
    prefix: --sample
- id: in_win
  doc: "[optional]\n- Window size. Default: 500000"
  type: boolean?
  inputBinding:
    prefix: --win
- id: in_step
  doc: "[optional]\n- Step size. Default: 500000"
  type: boolean?
  inputBinding:
    prefix: --step
- id: in_minlength
  doc: "[optional]\n- Minimum length for a chromosome to output. Default: 0"
  type: boolean?
  inputBinding:
    prefix: --minLength
- id: in_maximum_number_chromosome
  doc: "[optional]\n- Maximum number of chromosome IDs with lenght > 'minLength'.\n\
    Default: 60."
  type: boolean?
  inputBinding:
    prefix: --maxChromNumber
- id: in_prefix
  doc: '- Prefix for the output  [Default: MethGeno]'
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_height
  doc: "[optional]\n- Height of PDF figure. Unit is cm. [default: 10]"
  type: boolean?
  inputBinding:
    prefix: --height
- id: in_width
  doc: "[optional]\n- Width of PDF figure. Unit is cm. [default: 10]\n"
  type: boolean?
  inputBinding:
    prefix: --width
- id: in__outdir_
  doc: "--outdir\n- Output directory. [Default: ./]"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0
cwlVersion: v1.1
baseCommand:
- ViewBS
- MethGeno
