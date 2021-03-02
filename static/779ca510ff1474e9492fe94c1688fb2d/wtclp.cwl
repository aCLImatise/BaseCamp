class: CommandLineTool
id: wtclp.cwl
inputs:
- id: in_overlap_file_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar
  doc: "Overlap file from wtzmo, +, *\nFormat: reads1\\t+/-\\tlen1\\tbeg1\\tend1\\\
    treads2\\t+/-\\tlen2\\tbeg2\\tend2\\tscore\\tidentity<float>\\tmat\\tmis\\tins\\\
    tdel\\tcigar"
  type: double?
  inputBinding:
    prefix: -i
- id: in_long_reads_region
  doc: "Long reads retained region, often from wtobt/wtcyc, +\nFormat: read_name\\\
    toffset\\tlength\\toriginal_len"
  type: string?
  inputBinding:
    prefix: -b
- id: in_ouput_reads_regions
  doc: "Ouput of reads' regions after clipping, -:stdout, *\nFormat: read_name\\toffset\\\
    tlength"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_force_overwrite_output
  doc: Force overwrite output file
  type: File?
  inputBinding:
    prefix: -f
- id: in_keep_full_length
  doc: Keep full length or clip all
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_minimum_length_alignment
  doc: Minimum length of alignment, [1000]
  type: long?
  inputBinding:
    prefix: -s
- id: in_minimum_identity_alignment
  doc: Minimum identity of alignment, [0.6]
  type: double?
  inputBinding:
    prefix: -m
- id: in_trun_specical_reservation
  doc: "Trun off specical reservation for reads contained by others\nDefault: one\
    \ read (A) will not be trimmed when it is contained by another read (B)."
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_bin_size
  doc: Bin size, [50]
  type: long?
  inputBinding:
    prefix: -k
- id: in_window_size_used
  doc: Window size used in chimera detection, [1000]
  type: long?
  inputBinding:
    prefix: -w
- id: in_min_number_solid
  doc: Min number of solid overlaps in a suspecting region to reject chimeric, [3]
  type: long?
  inputBinding:
    prefix: -d
- id: in_max_turns_iterations
  doc: Max turns of iterations, [5]
  type: long?
  inputBinding:
    prefix: -n
- id: in_treat_read_path
  doc: "Treat read as a path of many blocks broken by possible chimeric sites, and\
    \ test whether the path is valid\nwill disable iteration, connection checking"
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_debug_chimera_checking
  doc: 'For debug. 1: chimera checking; 2: conntection checking; 4: clip high error
    ending [7]'
  type: long?
  inputBinding:
    prefix: -x
- id: in_verbose
  doc: Verbose
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_print_message_special
  doc: Print message for special read
  type: long?
  inputBinding:
    prefix: '-8'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite_output
  doc: Force overwrite output file
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
hints: []
cwlVersion: v1.1
baseCommand:
- wtclp
