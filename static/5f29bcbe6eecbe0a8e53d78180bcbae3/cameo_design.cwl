class: CommandLineTool
id: cameo_design.cwl
inputs:
- id: output
  doc: Output filename. Multiple output files can be provided (pair with respective
    format options).
  type: File
  inputBinding:
    prefix: --output
- id: format
  doc: '[xlsx|csv|tsv|pickle] Output file format (default csv).'
  type: boolean
  inputBinding:
    prefix: --format
- id: aerobic
  doc: / --anaerobic         Make oxygen available to the host organism (default).
  type: boolean
  inputBinding:
    prefix: --aerobic
- id: cores
  doc: RANGE           Number of CPU cores to use (default 1).
  type: long
  inputBinding:
    prefix: --cores
- id: differential_fva
  doc: / --no-differential-fva Perform differential flux variability analysis to determine
    flux modulation targets (default).
  type: boolean
  inputBinding:
    prefix: --differential-fva
- id: heuristic_optimization
  doc: / --no-heuristic-optimization Find gene knockout targets through heuristic
    optimization (default).
  type: boolean
  inputBinding:
    prefix: --heuristic-optimization
- id: max_pathway_predictions
  doc: Maximum number of heterologous pathways to predict (default 1).
  type: long
  inputBinding:
    prefix: --max-pathway-predictions
- id: differential_fva_points
  doc: Grid points for differential FVA (default 10).
  type: long
  inputBinding:
    prefix: --differential-fva-points
- id: pathway_prediction_timeout
  doc: Time limit (min) for individual pathway predictions (default 10 min).
  type: long
  inputBinding:
    prefix: --pathway-prediction-timeout
- id: heuristic_optimization_timeout
  doc: Time limit (min) on individual heuristic optimizations (default 45 min).
  type: long
  inputBinding:
    prefix: --heuristic-optimization-timeout
- id: logging
  doc: '[CRITICAL|ERROR|WARNING|INFO|DEBUG] Logging level (default WARNING).'
  type: boolean
  inputBinding:
    prefix: --logging
outputs: []
cwlVersion: v1.1
baseCommand:
- cameo
- design
