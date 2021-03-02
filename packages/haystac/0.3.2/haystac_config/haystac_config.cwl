class: CommandLineTool
id: haystac_config.cwl
inputs:
- id: in_cache
  doc: "Cache folder for storing genomes downloaded from NCBI\nand other shared data\
    \ (default: /root/haystac/cache)"
  type: File?
  inputBinding:
    prefix: --cache
- id: in_clear_cache
  doc: "Clear the contents of the cache folder, and delete the\nfolder itself (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --clear-cache
- id: in_api_key
  doc: "Personal NCBI API key (increases max concurrent requests\nfrom 3 to 10,\n\
    https://www.ncbi.nlm.nih.gov/account/register/)"
  type: long?
  inputBinding:
    prefix: --api-key
- id: in_use_cond_a
  doc: 'Use conda as a package manger (default: False)'
  type: boolean?
  inputBinding:
    prefix: --use-conda
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/haystac:0.3.2--py36_0
cwlVersion: v1.1
baseCommand:
- haystac
- config
