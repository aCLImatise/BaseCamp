class: CommandLineTool
id: coinfinder.cwl
inputs:
- id: in_input
  doc: The path to the gene_presence_absence.csv output from Roary
  type: File?
  inputBinding:
    prefix: --input
- id: in_input_roar_y
  doc: Set if -i is in the gene_presence_absence.csv format from Roary
  type: string?
  inputBinding:
    prefix: --inputroary
- id: in_phylogeny
  doc: Phylogeny of Betas in Newick format (required)
  type: string?
  inputBinding:
    prefix: --phylogeny
- id: in_associate
  doc: Overlap; identify groups that tend to associate/co-occur (default).
  type: string?
  inputBinding:
    prefix: --associate
- id: in_dissociate
  doc: Separation; identify groups that tend to dissociate/avoid.
  type: string?
  inputBinding:
    prefix: --dissociate
- id: in_level
  doc: 'Specify the significnace level cutoff (default: 0.05)'
  type: double?
  inputBinding:
    prefix: --level
- id: in_bonferroni
  doc: Bonferroni correction multiple correction (recommended & default)
  type: string?
  inputBinding:
    prefix: --bonferroni
- id: in_no_correction
  doc: No correction, use value as-is
  type: string?
  inputBinding:
    prefix: --nocorrection
- id: in_fraction
  doc: (Connectivity analysis only) Use fraction rather than p-value
  type: string?
  inputBinding:
    prefix: --fraction
- id: in_greater
  doc: Greater (recommended & default)
  type: string?
  inputBinding:
    prefix: --greater
- id: in_less
  doc: Less
  type: string?
  inputBinding:
    prefix: --less
- id: in_two_tailed
  doc: Two-tailed
  type: string?
  inputBinding:
    prefix: --twotailed
- id: in_num_cores
  doc: 'The number of cores to use (default: 2)'
  type: long?
  inputBinding:
    prefix: --num_cores
- id: in_verbose
  doc: Verbose output.
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_filter
  doc: Permit filtering of saturated and low-abundance data.
  type: string?
  inputBinding:
    prefix: --filter
- id: in_up_fil_threshold
  doc: 'filter threshold for high-abundance data filtering (default: 1.0 i.e. any
    gene in >=100/% of genomes.'
  type: double?
  inputBinding:
    prefix: --upfilthreshold
- id: in_fil_threshold
  doc: 'Threshold for low-abundance data filtering (default: 0.05 i.e. any gene in
    <=5% of genomes.'
  type: double?
  inputBinding:
    prefix: --filthreshold
- id: in_query
  doc: Query a specific gene.
  type: string?
  inputBinding:
    prefix: --query
- id: in_test
  doc: Runs the test cases and exits.
  type: string?
  inputBinding:
    prefix: --test
- id: in_all
  doc: Outputs all results, regardless of significance.
  type: string?
  inputBinding:
    prefix: --all
- id: in_output
  doc: 'The prefix of all output files (default: coincident).'
  type: string?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input
  doc: The path to the gene_presence_absence.csv output from Roary
  type: File?
  outputBinding:
    glob: $(inputs.in_input)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coinfinder:1.0.7--py38h69d548c_0
cwlVersion: v1.1
baseCommand:
- coinfinder
