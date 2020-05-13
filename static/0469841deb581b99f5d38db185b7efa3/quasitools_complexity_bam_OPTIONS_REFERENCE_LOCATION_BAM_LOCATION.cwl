class: CommandLineTool
id: quasitools_complexity_bam_OPTIONS_REFERENCE_LOCATION_BAM_LOCATION.cwl
inputs:
- id: haplotype_filter
  doc: User defined A filter between 0 and 100, inclusive. Abundancesbelow the filter
    size will be removed from each positionallist. The default is 0 (i.e. no filtering).
  type: double
  inputBinding:
    prefix: --haplotype_filter
- id: output_location
  doc: Output the quasispecies complexity in CSV format to the specified file.
  type: File
  inputBinding:
    prefix: --output_location
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- complexity
- bam
- OPTIONS
- REFERENCE_LOCATION
- BAM_LOCATION
