class: CommandLineTool
id: reanalyzer.cwl
inputs:
- id: in_input
  doc: '[string(s)]              Input  file (stdin ok). Mandatory option.'
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_classify
  doc: 'Run classification algorithm. Default value: true.'
  type: boolean?
  inputBinding:
    prefix: --classify
- id: in_min_score
  doc: '[number]             Min score (-1: no change). Default value: -1.0.'
  type: boolean?
  inputBinding:
    prefix: --minScore
- id: in_max_expected
  doc: '[number]          Max expected (-1: no change). Default value: -1.0.'
  type: boolean?
  inputBinding:
    prefix: --maxExpected
- id: in_min_percent_identity
  doc: '[number]   Min percent identity (-1: no change). Default value: -1.0.'
  type: boolean?
  inputBinding:
    prefix: --minPercentIdentity
- id: in_top_percent
  doc: '[number]          Top percent (-1: no change). Default value: -1.0.'
  type: boolean?
  inputBinding:
    prefix: --topPercent
- id: in_min_support_percent
  doc: '[number]   Min support as percent of assigned reads (0: off, -1: no change).
    Default value: -1.0.'
  type: boolean?
  inputBinding:
    prefix: --minSupportPercent
- id: in_min_support
  doc: '[number]          Min support (0: off, -1; no change). Default value: -1.'
  type: boolean?
  inputBinding:
    prefix: --minSupport
- id: in_min_percent_read_cover
  doc: '[number]   Min percent of read length to be covered by alignments (-1: no
    change). Default value: -1.0.'
  type: boolean?
  inputBinding:
    prefix: --minPercentReadCover
- id: in_min_percent_reference_cover
  doc: '[number]   Min percent of reference length to be covered by alignments (-1:
    no change). Default value: -1.0.'
  type: boolean?
  inputBinding:
    prefix: --minPercentReferenceCover
- id: in_lca_algorithm
  doc: '[string]        Set the LCA algorithm to use for taxonomic assignment. Default
    value: naive Legal values: naive, weighted, longReads'
  type: boolean?
  inputBinding:
    prefix: --lcaAlgorithm
- id: in_lca_coverage_percent
  doc: '[number]   Set the percent for the LCA to cover (-1: no change). Default value:
    -1.0.'
  type: boolean?
  inputBinding:
    prefix: --lcaCoveragePercent
- id: in_read_assignment_mode
  doc: '[string]   Set the read assignment mode. Default value: alignedBases in long
    read mode, readCount else'
  type: boolean?
  inputBinding:
    prefix: --readAssignmentMode
- id: in_con_file
  doc: '[string]              File of contaminant taxa (one Id or name per line).'
  type: boolean?
  inputBinding:
    prefix: --conFile
- id: in_paired
  doc: 'Reads are paired. Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_properties_file
  doc: '[string]        Properties file. Default value: /root/.Megan.def'
  type: boolean?
  inputBinding:
    prefix: --propertiesFile
- id: in_verbose
  doc: 'Echo commandline options and be verbose. Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_parameters
  doc: '-lg, --longReads                     Parse and analyse as long reads. Default
    value: false.'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megan:6.21.2--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- reanalyzer
