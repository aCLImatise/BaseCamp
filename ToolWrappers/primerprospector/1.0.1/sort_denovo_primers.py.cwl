class: CommandLineTool
id: sort_denovo_primers.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_output_dir
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_variable_pos_freq
  doc: "Percentage at which a variable base is considered for\ndegenerate primer design.\
    \ [default: 0.2]"
  type: double
  inputBinding:
    prefix: --variable_pos_freq
- id: in_known_primers_file_path
  doc: "Optional primers filepath to compare with the de novo\nprimers.  Comparisons\
    \ will be used to separate the de\nnovo primers into unique, partially overlapping,\
    \ or\noverlapping primers with the known primers supplied.\n[default: none]"
  type: File
  inputBinding:
    prefix: --known_primers_filepath
- id: in_sort_method
  doc: "Sorting method for reverse and forward primers output\nfiles, pass either\
    \ S, O, or P for [S]ensitivity,\n[O]verall shannon entropy, s[P]ecificity.[default:\
    \ S]"
  type: string
  inputBinding:
    prefix: --sort_method
- id: in_primer_name
  doc: "Root name for primers in the formatted_primers.txt\noutput file. [default:\
    \ ]"
  type: File
  inputBinding:
    prefix: --primer_name
- id: in_match_len
  doc: "Number of base pairs in overlapping sequences to be\nconsidered as a significant\
    \ overlap. [default: 10]"
  type: long
  inputBinding:
    prefix: --match_len
- id: in_truncate_len
  doc: "Number of bases to truncate for the 3' end of the\nprimer comparison to the\
    \ universal primer set.\n[default: 10]"
  type: long
  inputBinding:
    prefix: --truncate_len
- id: in_amplicon_len
  doc: "Generate primer pair output file that will yield\namplicons with an estimated\
    \ size within the given\nrange.  Requires that the standard alignment option\n\
    (-a) was used with generate_primers_denovo.py.  Pass\nthe min and max amplicon\
    \ size separated by a colon,\nfor example -a 250:500 [default: False]"
  type: long
  inputBinding:
    prefix: --amplicon_len
- id: in_hits_file
  doc: "Conserved Xmers file, output file from\ngenerate_primers_denovo.py module.\
    \ [REQUIRED]\n"
  type: File
  inputBinding:
    prefix: --hits_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_primer_name
  doc: "Root name for primers in the formatted_primers.txt\noutput file. [default:\
    \ ]"
  type: File
  outputBinding:
    glob: $(inputs.in_primer_name)
- id: out_hits_file
  doc: "Conserved Xmers file, output file from\ngenerate_primers_denovo.py module.\
    \ [REQUIRED]\n"
  type: File
  outputBinding:
    glob: $(inputs.in_hits_file)
cwlVersion: v1.1
baseCommand:
- sort_denovo_primers.py
