class: CommandLineTool
id: Aquila_step0_sortbam_hybrid.cwl
inputs:
- id: in_bam_file_list
  doc: "Required Parameter, BAM file list, each BAM file is\nseperately by comma \"\
    ,\". For example: 1.bam,2.bam"
  type: File?
  inputBinding:
    prefix: --bam_file_list
- id: in_out_dir
  doc: output folder
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_required_parameter_sample
  doc: "Required Parameter, The sample names list, each sample\nname is seperately\
    \ by comma \",\". For example:\nS24385_lysis_2,S24385_lysis_2H"
  type: long?
  inputBinding:
    prefix: --sample_name_list
- id: in_num_threads_for_sam_tools_sort
  doc: "The number of threads you can define for samtoos sort,\ndefault = 20\n"
  type: long?
  inputBinding:
    prefix: --num_threads_for_samtools_sort
- id: in_var_4
  doc: '[--num_threads_for_samtools_sort NUM_THREADS_FOR_SAMTOOLS_SORT]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: output folder
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- Aquila_step0_sortbam_hybrid
