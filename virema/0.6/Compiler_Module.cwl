class: CommandLineTool
id: Compiler_Module.py.cwl
inputs:
- id: input_data
  doc: UnCompiled Results file from ViReMa run
  type: string
  inputBinding:
    position: 0
- id: output_tag
  doc: Enter a tag name that will be appended to end of each output file.
  type: string
  inputBinding:
    prefix: --Output_Tag
- id: ded_up
  doc: Remove potential PCR duplicates. Default is off.
  type: boolean
  inputBinding:
    prefix: -DeDup
- id: read_names_entry
  doc: Append Read Names contributing to each compiled result. Default is off.
  type: boolean
  inputBinding:
    prefix: -ReadNamesEntry
- id: de_fuzz
  doc: "Choose how to defuzz data: '5' to report at 5' end of fuzzy region, '3' to\
    \ report at 3' end, or '0' to report in centre of fuzzy region. Default is no\
    \ fuzz handling (similar to choosing Right - see Routh et al)."
  type: string
  inputBinding:
    prefix: --Defuzz
- id: max_fuzz
  doc: Select maximum allowed length of fuzzy region. Recombination events with longer
    fuzzy regions will not be reported. Default is Seed Length.
  type: long
  inputBinding:
    prefix: --MaxFuzz
- id: micro_in_del_length
  doc: Size of MicroInDels - these are common artifacts of cDNA preparation. See Routh
    et al JMB 2012. Default size is 0)
  type: string
  inputBinding:
    prefix: --MicroInDel_Length
- id: compound_handling
  doc: Select this option for compound recombination event mapping (see manual for
    details). Enter number of nucleotides to map (must be less than Seed, and greater
    than number of nts in MicroInDel). Default is off.
  type: string
  inputBinding:
    prefix: --Compound_Handling
- id: output_dir
  doc: Enter a directory name that all compiled output files will be saved in.
  type: string
  inputBinding:
    prefix: --Output_Dir
- id: bed
  doc: Output recombination data into BED files.
  type: boolean
  inputBinding:
    prefix: -BED
outputs: []
cwlVersion: v1.1
baseCommand:
- Compiler_Module.py
