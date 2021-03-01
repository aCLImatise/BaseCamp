class: CommandLineTool
id: crisprtools_extract.cwl
inputs:
- id: in_output_file_directory
  doc: 'output file directory  [default: .]'
  type: File?
  inputBinding:
    prefix: -o
- id: in_give_custom_prefix
  doc: 'Give a custom prefix to each of the outputed files [default: ]'
  type: string?
  inputBinding:
    prefix: -O
- id: in_comma_separated_list
  doc: "A comma separated list of group IDs that you would like to extract data from.\n\
    Note that only the group number is needed, do not use prefixes like 'Group' or\
    \ 'G', which\nare sometimes used in file names or in a .crispr file"
  type: long?
  inputBinding:
    prefix: -g
- id: in_extract_spacers_listed
  doc: "[FILE] --spacer[=FILE]         Extract the spacers of the listed group.  By\
    \ default\nprints to stdout however an output file can also be given as an optional\
    \ arguement"
  type: File?
  inputBinding:
    prefix: -s
- id: in_extract_direct_repeats
  doc: "[FILE] --direct-repeat[=FILE]  Extract the direct repeats of the listed group.\
    \ By default\nprints to stdout however an output file can also be given as an\
    \ optional arguement"
  type: File?
  inputBinding:
    prefix: -d
- id: in_extract_flanking_sequences
  doc: "[FILE] --flanker[=FILE]        Extract the flanking sequences of the listed\
    \ group. By default\nprints to stdout however an output file can also be given\
    \ as an optional arguement"
  type: File?
  inputBinding:
    prefix: -f
- id: in_supress_coverage_information
  doc: Supress coverage information when printing spacers
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_header_prefix
  doc: 'Print a prefix to each of the headers [default: ]'
  type: string?
  inputBinding:
    prefix: --header-prefix
- id: in_split_group
  doc: "Split the results into different files for each group.  File names\nspecified\
    \ with -s -d -f will not be used in this mode but instead\noutput files will take\
    \ the form of PREFIX_GROUP_[type].fa\n"
  type: File?
  inputBinding:
    prefix: --split-group
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_directory
  doc: 'output file directory  [default: .]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_directory)
- id: out_extract_spacers_listed
  doc: "[FILE] --spacer[=FILE]         Extract the spacers of the listed group.  By\
    \ default\nprints to stdout however an output file can also be given as an optional\
    \ arguement"
  type: File?
  outputBinding:
    glob: $(inputs.in_extract_spacers_listed)
- id: out_extract_direct_repeats
  doc: "[FILE] --direct-repeat[=FILE]  Extract the direct repeats of the listed group.\
    \ By default\nprints to stdout however an output file can also be given as an\
    \ optional arguement"
  type: File?
  outputBinding:
    glob: $(inputs.in_extract_direct_repeats)
- id: out_extract_flanking_sequences
  doc: "[FILE] --flanker[=FILE]        Extract the flanking sequences of the listed\
    \ group. By default\nprints to stdout however an output file can also be given\
    \ as an optional arguement"
  type: File?
  outputBinding:
    glob: $(inputs.in_extract_flanking_sequences)
- id: out_split_group
  doc: "Split the results into different files for each group.  File names\nspecified\
    \ with -s -d -f will not be used in this mode but instead\noutput files will take\
    \ the form of PREFIX_GROUP_[type].fa\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_split_group)
hints: []
cwlVersion: v1.1
baseCommand:
- crisprtools
- extract
