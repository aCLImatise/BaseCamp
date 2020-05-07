class: CommandLineTool
id: Aquila_step0_sortbam.cwl
inputs:
- id: bam_file
  doc: Required parameter, BAM file, called by "longranger align"
  type: string
  inputBinding:
    prefix: --bam_file
- id: out_dir
  doc: Directory to store Aquila assembly results, default = ./Assembly_results
  type: string
  inputBinding:
    prefix: --out_dir
- id: num_threads_for_sam_tools_sort
  doc: The number of threads you can define for samtools sort, default = 20
  type: string
  inputBinding:
    prefix: --num_threads_for_samtools_sort
outputs: []
cwlVersion: v1.1
baseCommand:
- Aquila_step0_sortbam
