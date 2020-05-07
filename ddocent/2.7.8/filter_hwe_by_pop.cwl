class: CommandLineTool
id: filter_hwe_by_pop.pl.cwl
inputs:
- id: vcf_file
  doc: VCF input file
  type: boolean
  inputBinding:
    prefix: --vcffile
- id: pop_map
  doc: File with names of individuals and population designations, one per line
  type: boolean
  inputBinding:
    prefix: --popmap
- id: cut_off
  doc: 'Proportion of all populations that a locus can be below HWE cutoff without
    being filtered. For example, choosing 0.5 will filter SNPs that are below the
    p-value threshold in 50% or more of the populations. [Default: 0.25]'
  type: boolean
  inputBinding:
    prefix: --cutoff
- id: out
  doc: Name of outfile, by vcftools conventions (will be named X.recode.vcf)
  type: boolean
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_hwe_by_pop.pl
