class: CommandLineTool
id: Compiler_Module.py.cwl
inputs:
- id: in_output_tag
  doc: "Enter a tag name that will be appended to end of each\noutput file."
  type: File
  inputBinding:
    prefix: --Output_Tag
- id: in_ded_up
  doc: Remove potential PCR duplicates. Default is off.
  type: boolean
  inputBinding:
    prefix: -DeDup
- id: in_read_names_entry
  doc: "Append Read Names contributing to each compiled\nresult. Default is off."
  type: boolean
  inputBinding:
    prefix: -ReadNamesEntry
- id: in_de_fuzz
  doc: "Choose how to defuzz data: '5' to report at 5' end of\nfuzzy region, '3' to\
    \ report at 3' end, or '0' to\nreport in centre of fuzzy region. Default is no\
    \ fuzz\nhandling (similar to choosing Right - see Routh et\nal)."
  type: long
  inputBinding:
    prefix: --Defuzz
- id: in_max_fuzz
  doc: "Select maximum allowed length of fuzzy region.\nRecombination events with\
    \ longer fuzzy regions will\nnot be reported. Default is Seed Length."
  type: long
  inputBinding:
    prefix: --MaxFuzz
- id: in_micro_in_del_length
  doc: "Size of MicroInDels - these are common artifacts of\ncDNA preparation. See\
    \ Routh et al JMB 2012. Default\nsize is 0)"
  type: long
  inputBinding:
    prefix: --MicroInDel_Length
- id: in_compound_handling
  doc: "Select this option for compound recombination event\nmapping (see manual for\
    \ details). Enter number of\nnucleotides to map (must be less than Seed, and\n\
    greater than number of nts in MicroInDel). Default is\noff."
  type: long
  inputBinding:
    prefix: --Compound_Handling
- id: in_output_dir
  doc: "Enter a directory name that all compiled output files\nwill be saved in."
  type: Directory
  inputBinding:
    prefix: --Output_Dir
- id: in_bed
  doc: Output recombination data into BED files.
  type: boolean
  inputBinding:
    prefix: -BED
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tag
  doc: "Enter a tag name that will be appended to end of each\noutput file."
  type: File
  outputBinding:
    glob: $(inputs.in_output_tag)
- id: out_output_dir
  doc: "Enter a directory name that all compiled output files\nwill be saved in."
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- Compiler_Module.py
