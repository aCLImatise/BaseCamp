class: CommandLineTool
id: soap.coverage.cwl
inputs:
- id: in_cvg
  doc: "Selector for sequencing coverage mode, physical coverage mode or reads tag\
    \ mode\nAt least and only one should be selected!"
  type: string
  inputBinding:
    prefix: -cvg
- id: in_ref_single
  doc: '[filename]   Input reference fasta file used in SOAP'
  type: boolean
  inputBinding:
    prefix: -refsingle
- id: in_input_several_soap_soap_gziped_results
  doc: "[soap-file1 soap-file2 ...]\nInput several soap or soap gziped results by\
    \ filenames."
  type: boolean
  inputBinding:
    prefix: -i
- id: in_il
  doc: "[soap-list]         Input several soap or soap gziped results (absolute path!)\
    \ with a soap-list file\nCaution: Only PE aligned results can be used in physical\
    \ coverage!"
  type: boolean
  inputBinding:
    prefix: -il
- id: in_il_single
  doc: '[SE aligned results list]'
  type: boolean
  inputBinding:
    prefix: -il_single
- id: in_il_soap
  doc: '[PE aligned results list]'
  type: boolean
  inputBinding:
    prefix: -il_soap
- id: in_results_output_details
  doc: '[file-name]          Results output with details'
  type: File
  inputBinding:
    prefix: -o
- id: in_depth
  doc: '[directory]      Output coverage of each bp in seperate files, a directory
    should be given'
  type: Directory
  inputBinding:
    prefix: -depth
- id: in_depth_single
  doc: '[filename] Output coverage of each bp in a single file (text, fasta like)'
  type: File
  inputBinding:
    prefix: -depthsingle
- id: in_depth_single_bin
  doc: '[fn]    Output coverage of each bp in a single file (Binary mode)'
  type: File
  inputBinding:
    prefix: -depthsinglebin
- id: in_add_n
  doc: "[filename]        Input N block data for exclusion (marked as 65535 in depthsingle\
    \ output)\nInput format: <segment_name> <start (numbering from 1)> <end (exclude\
    \ the last)>"
  type: boolean
  inputBinding:
    prefix: -addn
- id: in_depth_input
  doc: '[filename]  Input previous coverage data (Both Text or Binary) for faster
    accumulation'
  type: boolean
  inputBinding:
    prefix: -depthinput
- id: in_cds_input
  doc: "[filename]    Input specific block range for calculating coverage\nInput format:\
    \ <segment_name> <start (numbering from 1)> <end (exclude the last)>"
  type: boolean
  inputBinding:
    prefix: -cdsinput
- id: in_plot
  doc: "[filename] [x-axis lower] [x-axis upper]\nOutput overall distribution of coverage\
    \ of all segments"
  type: File
  inputBinding:
    prefix: -plot
- id: in_cds_plot
  doc: "[filename] [x-axis lower] [x-axis upper]\nOutput distribution of coverage\
    \ of specific blocks"
  type: File
  inputBinding:
    prefix: -cdsplot
- id: in_cds_detail
  doc: "[filename]\nOutput coverage of each bp of each specific blocks in a single\
    \ file"
  type: File
  inputBinding:
    prefix: -cdsdetail
- id: in_window
  doc: "[filename] [length]\nOutput coverage averaged in a [length] long window to\
    \ [filename]"
  type: boolean
  inputBinding:
    prefix: -window
- id: in_p
  doc: '[num]                Number of processors [Default:4]'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_trim
  doc: '[num]             Exclude [num] bp(s) from head & tail of each segments'
  type: boolean
  inputBinding:
    prefix: -trim
- id: in_plain
  doc: Input is a three column list
  type: boolean
  inputBinding:
    prefix: -plain
- id: in_sam
  doc: Input is a standard SAM input file
  type: boolean
  inputBinding:
    prefix: -sam
- id: in_psl_query
  doc: Input is Blat for alculating query coverage.
  type: boolean
  inputBinding:
    prefix: -pslquery
- id: in_psl_sub
  doc: Input is Blat for calculating subject coverage.
  type: boolean
  inputBinding:
    prefix: -pslsub
- id: in_maq
  doc: Input is MAQ output file.
  type: boolean
  inputBinding:
    prefix: -maq
- id: in_m_eight_subject
  doc: Input is Blast m8 file for calculating subject coverage (reference should be
    subject).
  type: boolean
  inputBinding:
    prefix: -m8subject
- id: in_m_eight_query
  doc: Input is Blast m8 file for calculating query coverage (reference should be
    query).
  type: boolean
  inputBinding:
    prefix: -m8query
- id: in_mummer_query
  doc: '[limit]    Input mummer result file for calculating query coverage.'
  type: boolean
  inputBinding:
    prefix: -mummerquery
- id: in_ax_to_it_g
  doc: Input Blastz axt file for calculating target coverage.
  type: boolean
  inputBinding:
    prefix: -axtoitg
- id: in_ax_to_iq
  doc: Input Blastz axt file for calculating query coverage.
  type: boolean
  inputBinding:
    prefix: -axtoiq
- id: in_sp
  doc: "[filename_in] [filename_out]\nOutput S/P ratio data for post processing.\n\
    Column:\nref    start    end    name"
  type: boolean
  inputBinding:
    prefix: -sp
- id: in_pe_support
  doc: "[filename_in] [filename_out]\nOutput pair-end reads on specific areas.\nColumn:\n\
    ref    start    end    name"
  type: boolean
  inputBinding:
    prefix: -pesupport
- id: in_only_uniq
  doc: Use reads those are uniquely mapped (column 4 in soap == 1).
  type: boolean
  inputBinding:
    prefix: -onlyuniq
- id: in_precise
  doc: Omit mismatched bp in soap results.
  type: boolean
  inputBinding:
    prefix: -precise
- id: in_no_warning
  doc: Cancel all possible warning.
  type: boolean
  inputBinding:
    prefix: -nowarning
- id: in_no_calc
  doc: Do not perform depth calculation.
  type: boolean
  inputBinding:
    prefix: -nocalc
- id: in_only_cover
  doc: Only output 0 or 1 for coverage calculation.
  type: boolean
  inputBinding:
    prefix: -onlycover
- id: in_duplicate
  doc: '[num]        Exclude duplications, and gives the percentage of duplication.
    [num]=readlength'
  type: boolean
  inputBinding:
    prefix: -duplicate
- id: in_insert_upper
  doc: '[num]      Insert larger than num will be abandon [Default: 15000]'
  type: boolean
  inputBinding:
    prefix: -insertupper
- id: in_insert_lower
  doc: '[num]      Insert shorter thab num will be abandon [Default: 0]'
  type: boolean
  inputBinding:
    prefix: -insertlower
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_results_output_details
  doc: '[file-name]          Results output with details'
  type: File
  outputBinding:
    glob: $(inputs.in_results_output_details)
- id: out_depth
  doc: '[directory]      Output coverage of each bp in seperate files, a directory
    should be given'
  type: Directory
  outputBinding:
    glob: $(inputs.in_depth)
- id: out_depth_single
  doc: '[filename] Output coverage of each bp in a single file (text, fasta like)'
  type: File
  outputBinding:
    glob: $(inputs.in_depth_single)
- id: out_depth_single_bin
  doc: '[fn]    Output coverage of each bp in a single file (Binary mode)'
  type: File
  outputBinding:
    glob: $(inputs.in_depth_single_bin)
- id: out_plot
  doc: "[filename] [x-axis lower] [x-axis upper]\nOutput overall distribution of coverage\
    \ of all segments"
  type: File
  outputBinding:
    glob: $(inputs.in_plot)
- id: out_cds_plot
  doc: "[filename] [x-axis lower] [x-axis upper]\nOutput distribution of coverage\
    \ of specific blocks"
  type: File
  outputBinding:
    glob: $(inputs.in_cds_plot)
- id: out_cds_detail
  doc: "[filename]\nOutput coverage of each bp of each specific blocks in a single\
    \ file"
  type: File
  outputBinding:
    glob: $(inputs.in_cds_detail)
cwlVersion: v1.1
baseCommand:
- soap.coverage
