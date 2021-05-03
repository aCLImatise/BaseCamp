class: CommandLineTool
id: fqc.cwl
inputs:
- id: in_options_dot
  doc: The table "key" is the absolute path of each input file, but the printed
  type: string
  inputBinding:
    position: 0
- id: in_sorting
  doc: "*-s, --sortby*\nSort by field: 'order' (default, that is the order of the\
    \ input\nfiles as supplied by the user), 'count' (number of sequences),\n'name'\
    \ (filename). By default will be descending for numeric fields,\nascending for\
    \ 'path'. See \"-r, --reverse\".\n*-r, --reverse*\nReverse the sorting order."
  type: string
  inputBinding:
    position: 0
- id: in_other
  doc: "*-f, --fastx*\nForce FASTX reader also for files ending by .fastq or .fq (by\n\
    default would use getFastqRead() )\n*-v, --verbose*\nIncrease verbosity\n*-h,\
    \ --help*\nDisplay this help page"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/perl-fastx-reader:1.0.5--pl5262hdfd78af_0
cwlVersion: v1.1
baseCommand:
- fqc
