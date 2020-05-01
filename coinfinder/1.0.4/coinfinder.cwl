#!/usr/bin/env cwl-runner

baseCommand:
- coinfinder
class: CommandLineTool
cwlVersion: v1.0
id: coinfinder
inputs:
- doc: The path to the gene_presence_absence.csv output from Roary -or- The path of
    the Alpha-to-Beta file with (alpha)(TAB)(beta)
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Set if -i is in the gene_presence_absence.csv format from Roary
  id: input_roar_y
  inputBinding:
    prefix: --inputroary
  type: string
- doc: Phylogeny of Betas in Newick format (required)
  id: phylogeny
  inputBinding:
    prefix: --phylogeny
  type: string
- doc: Overlap; identify groups that tend to associate/co-occur (default).
  id: associate
  inputBinding:
    prefix: --associate
  type: string
- doc: Separation; identify groups that tend to dissociate/avoid.
  id: dissociate
  inputBinding:
    prefix: --dissociate
  type: string
- doc: 'Specify the significnace level cutoff (default: 0.05)'
  id: level
  inputBinding:
    prefix: --level
  type: string
- doc: Bonferroni correction multiple correction (recommended & default)
  id: bonferroni
  inputBinding:
    prefix: --bonferroni
  type: string
- doc: No correction, use value as-is
  id: no_correction
  inputBinding:
    prefix: --nocorrection
  type: string
- doc: (Connectivity analysis only) Use fraction rather than p-value
  id: fraction
  inputBinding:
    prefix: --fraction
  type: string
- doc: Greater (recommended & default)
  id: greater
  inputBinding:
    prefix: --greater
  type: string
- doc: Less
  id: less
  inputBinding:
    prefix: --less
  type: string
- doc: Two-tailed
  id: two_tailed
  inputBinding:
    prefix: --twotailed
  type: string
- doc: 'The number of cores to use (default: 2)'
  id: num_cores
  inputBinding:
    prefix: --num_cores
  type: string
- doc: Verbose output.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
- doc: Permit filtering of saturated and low-abundance data.
  id: filter
  inputBinding:
    prefix: --filter
  type: string
- doc: 'filter threshold for high-abundance data filtering (default: 1.0 i.e. any
    alpha in >=100/% of betas.'
  id: up_fil_threshold
  inputBinding:
    prefix: --upfilthreshold
  type: string
- doc: 'Threshold for low-abundance data filtering (default: 0.05 i.e. any alpha in
    <=5% of betas.'
  id: fil_threshold
  inputBinding:
    prefix: --filthreshold
  type: string
- doc: Query a specific gene.
  id: query
  inputBinding:
    prefix: --query
  type: string
- doc: Runs the test cases and exits.
  id: test
  inputBinding:
    prefix: --test
  type: string
- doc: Outputs all results, regardless of significance.
  id: all
  inputBinding:
    prefix: --all
  type: string
- doc: 'The prefix of all output files (default: coincident).'
  id: output
  inputBinding:
    prefix: --output
  type: string
