class: CommandLineTool
id: ftx.py.cwl
inputs:
- id: in_output
  doc: Output file name. Output will be in CSV format
  type: File?
  inputBinding:
    prefix: --output
- id: in_location
  doc: Location for bcftools view (e.g. chr1)
  type: long?
  inputBinding:
    prefix: --location
- id: in_restrict_regions
  doc: "Restrict analysis to given (sparse) regions (using -R\nin bcftools)."
  type: File?
  inputBinding:
    prefix: --restrict-regions
- id: in_target_regions
  doc: "Restrict analysis to given (dense) regions (using -T\nin bcftools)."
  type: File?
  inputBinding:
    prefix: --target-regions
- id: in_include_non_pass
  doc: Use to include failing variants in comparison.
  type: boolean?
  inputBinding:
    prefix: --include-nonpass
- id: in_feature_table
  doc: "Select a feature table to output. Options are:\n['hcc.strelka.snv', 'hcc.pisces.snv',\n\
    'hcc.mutect.snv', 'hcc.varscan2.indel',\n'admix.strelka.snv', 'generic', 'hcc.pisces.indel',\n\
    'hcc.strelka.indel', 'admix.strelka.indel',\n'hcc.varscan2.snv', 'hcc.mutect.indel']"
  type: long?
  inputBinding:
    prefix: --feature-table
- id: in_feature_label
  doc: "We will output a lable column, this value will go in\nthere -- default is\
    \ the input filename."
  type: File?
  inputBinding:
    prefix: --feature-label
- id: in_bam
  doc: pass one or more BAM files for feature table
  type: string?
  inputBinding:
    prefix: --bam
- id: in_normalize
  doc: Enable running of bcftools norm on the input file.
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_fix_chr
  doc: "Replace numeric chromosome names in the query by\nchr*-type names\n"
  type: boolean?
  inputBinding:
    prefix: --fix-chr
- id: in_extraction
  doc: -r REF, --reference REF
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file name. Output will be in CSV format
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hap.py:0.3.13--py27h5c5a3ab_0
cwlVersion: v1.1
baseCommand:
- ftx.py
