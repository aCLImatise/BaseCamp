class: CommandLineTool
id: secapr_clean_reads.cwl
inputs:
- id: in_input
  doc: "The directory containing the unzipped .fastq or .fq\nfiles (raw read files)"
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_config
  doc: "A configuration file containing the adapter\ninformation and the sample names"
  type: File?
  inputBinding:
    prefix: --config
- id: in_output
  doc: The output directory where results will be saved
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_read_min
  doc: "Set the minimum read count threshold. Any read file\ncontaining fewer reads\
    \ than this minimum threshold\nwill not be processed further. Default: 200000"
  type: File?
  inputBinding:
    prefix: --read_min
- id: in_index
  doc: "Specify if single- or double-indexed adapters were\nused for the library preparation\
    \ (essential\ninformation in order to interpret the control-file\ncorrectly)."
  type: string?
  inputBinding:
    prefix: --index
- id: in_seed_mismatches
  doc: "Specifies the maximum mismatch count which will still\nallow a full match\
    \ to be performed. For more\ninformation see trimmoatic tutorial. Default: 2"
  type: long?
  inputBinding:
    prefix: --seedMismatches
- id: in_palindrome_clip_threshold
  doc: "Specifies how accurate the match between the two\n\"adapter ligated\" reads\
    \ must be for PE palindrome read\nalignment. Default: 30"
  type: long?
  inputBinding:
    prefix: --palindromeClipThreshold
- id: in_simple_clip_threshold
  doc: "Specifies how accurate the match between any adapter\netc. sequence must be\
    \ against a read. For more\ninformation see trimmoatic tutorial. Default: 10"
  type: long?
  inputBinding:
    prefix: --simpleClipThreshold
- id: in_window_size
  doc: "Specifies the number of bases to average across. For\nmore information see\
    \ trimmoatic tutorial. Default: 4"
  type: long?
  inputBinding:
    prefix: --windowSize
- id: in_required_quality
  doc: "Specifies the average quality required. For more\ninformation see trimmoatic\
    \ tutorial. Default: 15"
  type: long?
  inputBinding:
    prefix: --requiredQuality
- id: in_leading_quality
  doc: "Specifies the minimum quality required to keep a base\nat the beginning of\
    \ the read. For more information see\ntrimmoatic tutorial. Default: 20"
  type: long?
  inputBinding:
    prefix: --leadingQuality
- id: in_trailing_quality
  doc: "Specifies the minimum quality required to keep a base\nat the end of a read.\
    \ For more information see\ntrimmoatic tutorial. Default: 20"
  type: long?
  inputBinding:
    prefix: --trailingQuality
- id: in_crop_to_length
  doc: "The number of bases to keep, from the start of the\nread. Everything exceeding\
    \ this length will be removed\nfrom the end of the read. For more information\
    \ see\ntrimmoatic tutorial. Default: 250"
  type: long?
  inputBinding:
    prefix: --cropToLength
- id: in_head_crop
  doc: "The number of bases to remove from the start of the\nread. For more information\
    \ see trimmoatic tutorial.\nDefault: 0"
  type: long?
  inputBinding:
    prefix: --headCrop
- id: in_minlength
  doc: "Specifies the minimum length of reads to be kept. For\nmore information see\
    \ trimmoatic tutorial. Default: 40\n"
  type: long?
  inputBinding:
    prefix: --minLength
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output directory where results will be saved
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- secapr
- clean_reads
