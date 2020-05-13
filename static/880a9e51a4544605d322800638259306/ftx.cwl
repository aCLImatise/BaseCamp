class: CommandLineTool
id: ftx.py.cwl
inputs:
- id: input
  doc: Input VCF file
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output file name. Output will be in CSV format
  type: string
  inputBinding:
    prefix: --output
- id: location
  doc: Location for bcftools view (e.g. chr1)
  type: string
  inputBinding:
    prefix: --location
- id: restrict_regions
  doc: Restrict analysis to given (sparse) regions (using -R in bcftools).
  type: string
  inputBinding:
    prefix: --restrict-regions
- id: target_regions
  doc: Restrict analysis to given (dense) regions (using -T in bcftools).
  type: string
  inputBinding:
    prefix: --target-regions
- id: include_non_pass
  doc: Use to include failing variants in comparison.
  type: boolean
  inputBinding:
    prefix: --include-nonpass
- id: feature_table
  doc: "Select a feature table to output. Options are: ['hcc.strelka.snv', 'hcc.pisces.snv',\
    \ 'hcc.mutect.snv', 'hcc.varscan2.indel', 'admix.strelka.snv', 'generic', 'hcc.pisces.indel',\
    \ 'hcc.strelka.indel', 'admix.strelka.indel', 'hcc.varscan2.snv', 'hcc.mutect.indel']"
  type: string
  inputBinding:
    prefix: --feature-table
- id: feature_label
  doc: We will output a lable column, this value will go in there -- default is the
    input filename.
  type: string
  inputBinding:
    prefix: --feature-label
- id: bam
  doc: pass one or more BAM files for feature table extraction
  type: string
  inputBinding:
    prefix: --bam
- id: reference
  doc: Specify a reference file for normalization.
  type: string
  inputBinding:
    prefix: --reference
- id: normalize
  doc: Enable running of bcftools norm on the input file.
  type: boolean
  inputBinding:
    prefix: --normalize
- id: fix_chr
  doc: Replace numeric chromosome names in the query by chr*-type names
  type: boolean
  inputBinding:
    prefix: --fix-chr
outputs: []
cwlVersion: v1.1
baseCommand:
- ftx.py
