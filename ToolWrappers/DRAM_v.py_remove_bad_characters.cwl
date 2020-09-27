class: CommandLineTool
id: DRAM_v.py_remove_bad_characters.cwl
inputs:
- id: in_input_fast_a
  doc: "Fasta file to remove ; and = from headers (default:\nNone)"
  type: File
  inputBinding:
    prefix: --input_fasta
- id: in_input_vir_sorter_affi_contigs
  doc: "Fasta file to remove ; and = from headers (default:\nNone)"
  type: File
  inputBinding:
    prefix: --input_virsorter_affi_contigs
- id: in_output
  doc: "Name of output file. If cleaning a fasta file the\noutput file name must have\
    \ no = or ;. (default: None)\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Name of output file. If cleaning a fasta file the\noutput file name must have\
    \ no = or ;. (default: None)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- DRAM-v.py
- remove_bad_characters
