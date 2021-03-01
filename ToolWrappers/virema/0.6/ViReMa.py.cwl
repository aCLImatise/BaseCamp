class: CommandLineTool
id: ViReMa.py.cwl
inputs:
- id: in_host_index
  doc: "Host genome reference index key, e.g.\nd_melanogaster_fb5_22"
  type: long?
  inputBinding:
    prefix: --Host_Index
- id: in_number_mismatches_tolerated
  doc: "Number of mismatches tolerated in mapped seed and in\nmapped segments. Default\
    \ is 1."
  type: long?
  inputBinding:
    prefix: --N
- id: in_seed
  doc: Number of nucleotides in the Seed region. Default is
  type: long?
  inputBinding:
    prefix: --Seed
- id: in_five_pad
  doc: "Number of nucleotides not allowed to have mismatches\nat 5' end of segment.\
    \ Default is 5."
  type: long?
  inputBinding:
    prefix: --FivePad
- id: in_of_segment_seperatethreepad
  doc: "Number of nucleotides not allowed to have mismatches\nat 3' end and 5' of\
    \ segment. Overrides seperate\nThreePad and FivePad settings. Default is 5."
  type: long?
  inputBinding:
    prefix: --X
- id: in_host_seed
  doc: "Number of nucleotides in the Seed region when mapping\nto the Host Genome.\
    \ Default is same as Seed value."
  type: long?
  inputBinding:
    prefix: --Host_Seed
- id: in_select_data_is
  doc: "Select '-F' if data is in FASTA format fasta. Default\nis FASTQ."
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_de_fuzz
  doc: "Choose how to defuzz data: '5' to report at 5' end of\nfuzzy region, '3' to\
    \ report at 3' end, or '0' to\nreport in centre of fuzzy region. Default is no\
    \ fuzz\nhandling (similar to choosing Right - see Routh et\nal)."
  type: long?
  inputBinding:
    prefix: --Defuzz
- id: in_max_fuzz
  doc: "Select maximum allowed length of fuzzy region.\nRecombination events with\
    \ longer fuzzy regions will\nnot be reported. Default is Seed Length."
  type: long?
  inputBinding:
    prefix: --MaxFuzz
- id: in_ded_up
  doc: Remove potential PCR duplicates. Default is 'off'.
  type: boolean?
  inputBinding:
    prefix: -DeDup
- id: in_read_names_entry
  doc: "Append Read Names contributing to each compiled\nresult. Default is off."
  type: boolean?
  inputBinding:
    prefix: -ReadNamesEntry
- id: in_micro_in_del_length
  doc: "Size of MicroInDels - these are common artifacts of\ncDNA preparation. See\
    \ Routh et al JMB 2012. Default\nsize is 0)"
  type: long?
  inputBinding:
    prefix: --MicroInDel_Length
- id: in_compound_handling
  doc: "Select this option for compound recombination event\nmapping (see manual for\
    \ details). Enter number of\nnucleotides to map (must be less than Seed, and\n\
    greater than number of nts in MicroInDel). Default is\noff."
  type: long?
  inputBinding:
    prefix: --Compound_Handling
- id: in_output_tag
  doc: "Enter a tag name that will be appended to end of each\noutput file."
  type: File?
  inputBinding:
    prefix: --Output_Tag
- id: in_output_dir
  doc: "Enter a directory name that all compiled output files\nwill be saved in."
  type: Directory?
  inputBinding:
    prefix: --Output_Dir
- id: in_enter_number_available
  doc: Enter number of available processors. Default is 1.
  type: long?
  inputBinding:
    prefix: --p
- id: in_chunk
  doc: Enter number of reads to process together.
  type: long?
  inputBinding:
    prefix: --Chunk
- id: in_aligner
  doc: "Enter Alignment Software: 'bwa', 'bowtie'. Default is"
  type: string?
  inputBinding:
    prefix: --Aligner
- id: in_bed
  doc: Output recombination data into BED files.
  type: boolean?
  inputBinding:
    prefix: -BED
- id: in_win
  doc: "Select this option if running ViReMa from a\nWindows/Cygwin shell.\n"
  type: boolean?
  inputBinding:
    prefix: -Win
- id: in_virus_index
  doc: Virus genome reference index key. e.g. FHV_Genome
  type: string
  inputBinding:
    position: 0
- id: in_input_data
  doc: File containing single reads in FASTQ format
  type: string
  inputBinding:
    position: 1
- id: in_output_data
  doc: Destination file for results
  type: string
  inputBinding:
    position: 2
- id: in_two_five_dot
  doc: --ThreePad THREEPAD   Number of nucleotides not allowed to have mismatches
  type: long
  inputBinding:
    position: 0
- id: in_bowtie_dot
  doc: -No_Compile           Select this option if you do not wish to compile the
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tag
  doc: "Enter a tag name that will be appended to end of each\noutput file."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_tag)
- id: out_output_dir
  doc: "Enter a directory name that all compiled output files\nwill be saved in."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- ViReMa.py
