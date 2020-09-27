class: CommandLineTool
id: bowtie_mapper.sh.cwl
inputs:
- id: in_directory_optionalo_output
  doc: "directory (optional)\n-o output directory (optional)\n-d database to map (.fasta)\n\
    -s sample name\n-g group name (optional). If unset, samples will be gathered in\
    \ NO_GROUP group\n-1 reads corresponding to paired-end R1\n-2 reads corresponding\
    \ to paired-end R2\n-f offrate index for bowtie_build (optional). Default value\
    \ 1. for quicker indexing use higher number\n-a use -a mapping (off by default)\n\
    -T number of threads\n-v version\n-h display usage message"
  type: long
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bowtie_mapper.sh
