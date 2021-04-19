class: CommandLineTool
id: zpca_counts.cwl
inputs:
- id: in_counts
  doc: Counts table (tsv). The first column should contain the gene/transcript id.
    The other columns should contain the counts for each sample.
  type: File?
  inputBinding:
    prefix: --counts
- id: in_lengths
  doc: "Table of feature lengths (tsv).\nThe file can have two types of formats.\n\
    First option: The first column should contain the gene/transcript id.\nThe second\
    \ column should contain the corresponding lengths\nSecond option: The first column\
    \ should contain the gene/transcript id.\nThe rest of the columns should contain\
    \ the gene/transcript lengths for each of the samples\nNote that the sample names\
    \ should be the same the sample names of the counts."
  type: File?
  inputBinding:
    prefix: --lengths
- id: in_pseudo_count
  doc: 'Pseudocount to add in the count table. Default: 1'
  type: long?
  inputBinding:
    prefix: --pseudocount
- id: in_filter_not_expressed
  doc: Filter not expressed genes/transcripts (0 counts for all samples).
  type: boolean?
  inputBinding:
    prefix: --filter-not-expressed
- id: in_out
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_verbose
  doc: Verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/zpca:0.8.3.post1--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- zpca-counts
