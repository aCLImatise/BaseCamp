class: CommandLineTool
id: metapi_init.cwl
inputs:
- id: in_workdir
  doc: 'project workdir (default: ./)'
  type: string?
  inputBinding:
    prefix: --workdir
- id: in_samples
  doc: "desired input:\nsamples list, tsv format required.\nif begin from trimming,\
    \ rmhost, or assembly:\nif it is fastq:\nthe header is: [id, fq1, fq2]\nif it\
    \ is sra:\nthe header is: [id, sra]\nif begin from simulate:\nthe header is: [id,\
    \ genome, abundance, reads_num, model]"
  type: long?
  inputBinding:
    prefix: --samples
- id: in_begin
  doc: 'pipeline starting point (default: trimming)'
  type: string?
  inputBinding:
    prefix: --begin
- id: in_trimmer
  doc: 'which trimmer used (default: fastp)'
  type: string?
  inputBinding:
    prefix: --trimmer
- id: in_rm_hoster
  doc: 'which rmhoster used (default: bowtie2)'
  type: string?
  inputBinding:
    prefix: --rmhoster
- id: in_assembler
  doc: "[{idba-ud,megahit,metaspades,spades,opera-ms} ...]\nwhich assembler used,\
    \ required when begin with binning, can be changed in config.yaml (default: ['metaspades'])"
  type: string?
  inputBinding:
    prefix: --assembler
- id: in_binner
  doc: "wchich binner used (default: ['metabat2', 'concoct', 'maxbin2', 'graphbin2',\
    \ 'vamb', 'dastools'])\n"
  type: string[]
  inputBinding:
    prefix: --binner
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metapi:1.1.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- metapi
- init
