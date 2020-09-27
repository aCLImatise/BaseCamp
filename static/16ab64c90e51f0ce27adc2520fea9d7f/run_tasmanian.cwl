class: CommandLineTool
id: run_tasmanian.cwl
inputs:
- id: in_reference_fast_a
  doc: "optional:\n--------\n-u|--unmask-genome (convert masked bases to upper case\
    \ and include them in the calculations - default=False)\n-q|--base-quality (default=20)\n\
    -f|--filter-indel (exclude reads with indels default=False)\n-l|--filter-length\
    \ (include only reads with x,y range of lengths, default=0, 76)\n-s|--soft-clip-bypass\
    \ (Decide when softclipped base is correct(0). Don't use these bases(1). Force\
    \ use them(2).  default=0)\n-m|--mapping-quality (minimum allowed mapping quality\
    \ -defailt=0)\n-h|--help\n-g|--fragment-length (use fragments withi these lengths\
    \ ONLY)\n-o|--output-prefix (use this prefix for the output and logging files)\n\
    -c|--confidence (number of bases in the complement region of the read)\n-d|--debug\
    \ (create a log file)\n"
  type: boolean
  inputBinding:
    prefix: --reference-fasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run_tasmanian
