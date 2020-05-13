class: CommandLineTool
id: relocaTE_absenceFinder.py_align_file_usr_target_genome_path_TE_regex_file_exper_flank_len_existing_TE_mm_allow_bowtie2_lib_size.cwl
inputs:
- id: bed_tools
  doc: = sys.argv[12]
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- relocaTE_absenceFinder.py
- align_file
- usr_target
- genome_path
- TE
- regex_file
- exper
- flank_len
- existing_TE
- mm_allow
- bowtie2
- lib_size
