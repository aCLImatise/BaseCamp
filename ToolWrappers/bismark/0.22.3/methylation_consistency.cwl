class: CommandLineTool
id: methylation_consistency.cwl
inputs:
- id: in_min_count
  doc: "Set the minumum number of CpGs which need to be present for a read to be considered\
    \ at all\n[Default: 5]. Reads with fewer CpGs than this will be discarded."
  type: boolean
  inputBinding:
    prefix: --min-count
- id: in_s_slash_single_end
  doc: 'Input files will be treated as single-end Bismark BAM files. Default: [AUTO-DETECT]'
  type: boolean
  inputBinding:
    prefix: -s/--single_end
- id: in_p_slash_paired_end
  doc: 'Input files will be treated as paired-end Bismark BAM files. Default: [AUTO-DETECT]'
  type: boolean
  inputBinding:
    prefix: -p/--paired_end
- id: in_sam_tools_path
  doc: "[path]  The path to your Samtools installation, e.g. /home/user/samtools/.\
    \ Does not need to\nbe specified explicitly if Samtools is in the PATH already"
  type: boolean
  inputBinding:
    prefix: --samtools_path
- id: in_lower_threshold
  doc: '[INT] Percentage value up to which a read is considered (fully) un-methylated.
    [Default: 10].'
  type: boolean
  inputBinding:
    prefix: --lower_threshold
- id: in_upper_threshold
  doc: '[INT] Percentage value above which a read is considered (fully) methylated.
    [Default: 90].'
  type: boolean
  inputBinding:
    prefix: --upper_threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- methylation_consistency
