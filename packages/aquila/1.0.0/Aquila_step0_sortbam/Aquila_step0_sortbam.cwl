class: CommandLineTool
id: Aquila_step0_sortbam.cwl
inputs:
- id: in_bam_file
  doc: "Required parameter, BAM file, called by \"longranger\nalign\""
  type: File
  inputBinding:
    prefix: --bam_file
- id: in_out_dir
  doc: "Directory to store Aquila assembly results, default =\n./Assembly_results"
  type: Directory
  inputBinding:
    prefix: --out_dir
- id: in_num_threads_for_sam_tools_sort
  doc: "The number of threads you can define for samtools\nsort, default = 20\n"
  type: long
  inputBinding:
    prefix: --num_threads_for_samtools_sort
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Aquila_step0_sortbam
