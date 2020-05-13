class: CommandLineTool
id: Aquila_step0_sortbam_multilibs.cwl
inputs:
- id: bam_file_list
  doc: 'Required Parameter, BAM file list, each BAM file is seperately by comma ",".
    For example: 1.bam,2.bam'
  type: string
  inputBinding:
    prefix: --bam_file_list
- id: out_dir
  doc: Directory to store Aquila assembly results, default =./Assembly_results
  type: string
  inputBinding:
    prefix: --out_dir
- id: sample_name_list
  doc: 'Required Parameter, The sample names list, each sample name is seperately
    by comma ",". For example: S24385_lysis_2,S24385_lysis_2H'
  type: string
  inputBinding:
    prefix: --sample_name_list
- id: num_threads_for_sam_tools_sort
  doc: The number of threads you can define for samtools sort, default = 20
  type: string
  inputBinding:
    prefix: --num_threads_for_samtools_sort
outputs: []
cwlVersion: v1.1
baseCommand:
- Aquila_step0_sortbam_multilibs
