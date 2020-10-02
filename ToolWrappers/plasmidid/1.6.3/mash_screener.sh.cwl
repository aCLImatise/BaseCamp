class: CommandLineTool
id: mash_screener.sh.cwl
inputs:
- id: in_directory_optionalo_output
  doc: "directory (optional)\n-o output directory (optional)\n-d database to screen\
    \ (.fasta)\n-s sample name\n-g group name (optional). If unset, samples will be\
    \ gathered in NO_GROUP group\n-1 reads corresponding to paired-end R1\n-2 reads\
    \ corresponding to paired-end R2\n-f threshold identity value to retieve sequence\
    \ ids with at least this value (default 0.9)\n-w use winner takes it all\n-T number\
    \ of threads\n-v version\n-h display usage message"
  type: long
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mash_screener.sh
