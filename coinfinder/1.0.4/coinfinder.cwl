class: CommandLineTool
id: coinfinder.cwl
inputs:
- id: input
  doc: The path to the gene_presence_absence.csv output from Roary -or- The path of
    the Alpha-to-Beta file with (alpha)(TAB)(beta)
  type: string
  inputBinding:
    prefix: --input
- id: input_roar_y
  doc: Set if -i is in the gene_presence_absence.csv format from Roary
  type: string
  inputBinding:
    prefix: --inputroary
- id: phylogeny
  doc: Phylogeny of Betas in Newick format (required)
  type: string
  inputBinding:
    prefix: --phylogeny
- id: associate
  doc: Overlap; identify groups that tend to associate/co-occur (default).
  type: string
  inputBinding:
    prefix: --associate
- id: dissociate
  doc: Separation; identify groups that tend to dissociate/avoid.
  type: string
  inputBinding:
    prefix: --dissociate
- id: level
  doc: 'Specify the significnace level cutoff (default: 0.05)'
  type: string
  inputBinding:
    prefix: --level
- id: bonferroni
  doc: Bonferroni correction multiple correction (recommended & default)
  type: string
  inputBinding:
    prefix: --bonferroni
- id: no_correction
  doc: No correction, use value as-is
  type: string
  inputBinding:
    prefix: --nocorrection
- id: fraction
  doc: (Connectivity analysis only) Use fraction rather than p-value
  type: string
  inputBinding:
    prefix: --fraction
- id: greater
  doc: Greater (recommended & default)
  type: string
  inputBinding:
    prefix: --greater
- id: less
  doc: Less
  type: string
  inputBinding:
    prefix: --less
- id: two_tailed
  doc: Two-tailed
  type: string
  inputBinding:
    prefix: --twotailed
- id: num_cores
  doc: 'The number of cores to use (default: 2)'
  type: string
  inputBinding:
    prefix: --num_cores
- id: verbose
  doc: Verbose output.
  type: string
  inputBinding:
    prefix: --verbose
- id: filter
  doc: Permit filtering of saturated and low-abundance data.
  type: string
  inputBinding:
    prefix: --filter
- id: up_fil_threshold
  doc: 'filter threshold for high-abundance data filtering (default: 1.0 i.e. any
    alpha in >=100/% of betas.'
  type: string
  inputBinding:
    prefix: --upfilthreshold
- id: fil_threshold
  doc: 'Threshold for low-abundance data filtering (default: 0.05 i.e. any alpha in
    <=5% of betas.'
  type: string
  inputBinding:
    prefix: --filthreshold
- id: query
  doc: Query a specific gene.
  type: string
  inputBinding:
    prefix: --query
- id: test
  doc: Runs the test cases and exits.
  type: string
  inputBinding:
    prefix: --test
- id: all
  doc: Outputs all results, regardless of significance.
  type: string
  inputBinding:
    prefix: --all
- id: output
  doc: 'The prefix of all output files (default: coincident).'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- coinfinder
