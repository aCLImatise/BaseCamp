class: CommandLineTool
id: verify_mapping_quality.pl.cwl
inputs:
- id: in_bam
  doc: "[REQUIRED]\nThe location for a specific BAM file in the dataset. Multiple\
    \ BAM\nfiles can be input. Example with 3 BAM files: --bam\nbam1=/path/bam1.bam\
    \ --bam bam2=/path/bam2.bam --bam\nbam3=/path/bam3.bam"
  type: boolean?
  inputBinding:
    prefix: --bam
- id: in_min_depth
  doc: "[optional]\nThe minimum depth of coverage required at each genome position\
    \ to be\nconsidered mapped. Default value is 15x."
  type: boolean?
  inputBinding:
    prefix: --min-depth
- id: in_min_map
  doc: "[optional]\nThe minimum percent mapped to reference for each strain, pipeline\n\
    will log all strains that do not meet this minimum percentage.\nDefault value\
    \ is 80%."
  type: boolean?
  inputBinding:
    prefix: --min-map
- id: in_cores
  doc: "[optional]\nThe number of CPU cores that should be used for the calculations."
  type: boolean?
  inputBinding:
    prefix: --cores
- id: in_output
  doc: Path to write human readable report
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_out_strains
  doc: "Path to write list of strain(s) one per line for filter File\ncollection tool\
    \ or vcf2snvalignment itself"
  type: boolean?
  inputBinding:
    prefix: --out_strains
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- verify_mapping_quality.pl
