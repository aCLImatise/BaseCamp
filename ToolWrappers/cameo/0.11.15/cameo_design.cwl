class: CommandLineTool
id: cameo_design.cwl
inputs:
- id: in_output
  doc: "Output filename. Multiple output files can\nbe provided (pair with respective\
    \ format\noptions)."
  type: File
  inputBinding:
    prefix: --output
- id: in_format
  doc: "[xlsx|csv|tsv|pickle]\nOutput file format (default csv)."
  type: File
  inputBinding:
    prefix: --format
- id: in_aerobic
  doc: "/ --anaerobic         Make oxygen available to the host organism\n(default)."
  type: boolean
  inputBinding:
    prefix: --aerobic
- id: in_cores
  doc: RANGE           Number of CPU cores to use (default 1).
  type: long
  inputBinding:
    prefix: --cores
- id: in_differential_fva
  doc: "/ --no-differential-fva\nPerform differential flux variability\nanalysis to\
    \ determine flux modulation\ntargets (default)."
  type: boolean
  inputBinding:
    prefix: --differential-fva
- id: in_heuristic_optimization
  doc: "/ --no-heuristic-optimization\nFind gene knockout targets through heuristic\n\
    optimization (default)."
  type: boolean
  inputBinding:
    prefix: --heuristic-optimization
- id: in_max_pathway_predictions
  doc: "Maximum number of heterologous pathways to\npredict (default 1)."
  type: long
  inputBinding:
    prefix: --max-pathway-predictions
- id: in_differential_fva_points
  doc: "Grid points for differential FVA (default\n10)."
  type: long
  inputBinding:
    prefix: --differential-fva-points
- id: in_pathway_prediction_timeout
  doc: "Time limit (min) for individual pathway\npredictions (default 10 min)."
  type: long
  inputBinding:
    prefix: --pathway-prediction-timeout
- id: in_heuristic_optimization_timeout
  doc: "Time limit (min) on individual heuristic\noptimizations (default 45 min)."
  type: long
  inputBinding:
    prefix: --heuristic-optimization-timeout
- id: in_logging
  doc: "[CRITICAL|ERROR|WARNING|INFO|DEBUG]\nLogging level (default WARNING)."
  type: boolean
  inputBinding:
    prefix: --logging
- id: in_product
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output filename. Multiple output files can\nbe provided (pair with respective\
    \ format\noptions)."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_format
  doc: "[xlsx|csv|tsv|pickle]\nOutput file format (default csv)."
  type: File
  outputBinding:
    glob: $(inputs.in_format)
cwlVersion: v1.1
baseCommand:
- cameo
- design
