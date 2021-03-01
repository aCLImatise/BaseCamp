class: CommandLineTool
id: oncogemini_query.cwl
inputs:
- id: in_query_issued_database
  doc: The query to be issued to the database
  type: string?
  inputBinding:
    prefix: -q
- id: in_gt_filter
  doc: Restrictions to apply to genotype values
  type: string?
  inputBinding:
    prefix: --gt-filter
- id: in_show_samples
  doc: "Add a column of all sample names with a variant to\neach variant."
  type: boolean?
  inputBinding:
    prefix: --show-samples
- id: in_show_families
  doc: "Add a column listing all of the families with a\nvariant to each variant."
  type: boolean?
  inputBinding:
    prefix: --show-families
- id: in_family_wise
  doc: Perform the sample-filter on a family-wise basis.
  type: boolean?
  inputBinding:
    prefix: --family-wise
- id: in_min_kindreds
  doc: "Minimum number of families for a variant passing a\nfamily-wise filter to\
    \ be in."
  type: long?
  inputBinding:
    prefix: --min-kindreds
- id: in_sample_delim
  doc: "The delimiter to be used with the --show-samples\noption."
  type: string?
  inputBinding:
    prefix: --sample-delim
- id: in_header
  doc: Add a header of column names to the output.
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_sample_filter
  doc: SQL filter to use to filter the sample table
  type: string?
  inputBinding:
    prefix: --sample-filter
- id: in_in
  doc: "[{all,none,any,only,not} [{all,none,any,only,not} ...]]\nA variant must be\
    \ in either all, none or any samples\npassing the --sample-query filter."
  type: boolean?
  inputBinding:
    prefix: --in
- id: in_format
  doc: Format of output (JSON, TPED or default)
  type: string?
  inputBinding:
    prefix: --format
- id: in_region
  doc: Restrict query to this region, e.g. chr1:10-20.
  type: long?
  inputBinding:
    prefix: --region
- id: in_carrier_summary_by_phenotype
  doc: "Output columns of counts of carriers and non-carriers\nstratified by the given\
    \ sample phenotype column\n"
  type: string?
  inputBinding:
    prefix: --carrier-summary-by-phenotype
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- oncogemini
- query
