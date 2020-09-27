class: CommandLineTool
id: parallel_predict_traits.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_calculate_accuracy_metrics
  doc: "if specified, calculate accuracy metrics (i.e. how\naccurate does PICRUSt\
    \ expect its predictions to be?)\nand add to output file [default: False]"
  type: File
  inputBinding:
    prefix: --calculate_accuracy_metrics
- id: in_reconstructed_trait_table
  doc: "the input trait table describing reconstructed traits\n(from ancestral_state_reconstruction.py)\
    \ in tab-\ndelimited format [default: none]"
  type: string
  inputBinding:
    prefix: --reconstructed_trait_table
- id: in_output_pre_calc_file_in_biom
  doc: "Instead of outputting the precalculated file in tab-\ndelimited format (with\
    \ otu ids as row ids and traits\nas columns) output the data in biom format (with\
    \ otu\nas SampleIds and traits as ObservationIds) [default:\nFalse]"
  type: File
  inputBinding:
    prefix: --output_precalc_file_in_biom
- id: in_reconstruction_confidence
  doc: "the input trait table describing confidence intervals\nfor reconstructed traits\
    \ (from\nancestral_state_reconstruction.py) in tab-delimited\nformat [default:\
    \ none]"
  type: string
  inputBinding:
    prefix: --reconstruction_confidence
- id: in_parallel_method
  doc: "Method for parallelizaation. Valid choices are: sge,\ntorque, multithreaded\
    \ [default: multithreaded]"
  type: string
  inputBinding:
    prefix: --parallel_method
- id: in_num_jobs
  doc: 'Number of jobs to be submitted. [default: 2]'
  type: long
  inputBinding:
    prefix: --num_jobs
- id: in_delay
  doc: "Number of seconds to pause between launching each job\n[default: 0]"
  type: long
  inputBinding:
    prefix: --delay
- id: in_already_calculated
  doc: "Precalculated file that is missing some otu\npredictions. Output will contain\
    \ predictions from this\nfile and the new predictions as well. [default: none]"
  type: File
  inputBinding:
    prefix: --already_calculated
- id: in_observed_trait_table
  doc: "the input trait table describing directly observed\ntraits (e.g. sequenced\
    \ genomes) in tab-delimited\nformat [REQUIRED]"
  type: string
  inputBinding:
    prefix: --observed_trait_table
- id: in_tree
  doc: the full reference tree, in Newick format [REQUIRED]
  type: string
  inputBinding:
    prefix: --tree
- id: in_output_trait_table
  doc: "the output filepath for trait predictions [REQUIRED]\n"
  type: File
  inputBinding:
    prefix: --output_trait_table
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_calculate_accuracy_metrics
  doc: "if specified, calculate accuracy metrics (i.e. how\naccurate does PICRUSt\
    \ expect its predictions to be?)\nand add to output file [default: False]"
  type: File
  outputBinding:
    glob: $(inputs.in_calculate_accuracy_metrics)
- id: out_output_pre_calc_file_in_biom
  doc: "Instead of outputting the precalculated file in tab-\ndelimited format (with\
    \ otu ids as row ids and traits\nas columns) output the data in biom format (with\
    \ otu\nas SampleIds and traits as ObservationIds) [default:\nFalse]"
  type: File
  outputBinding:
    glob: $(inputs.in_output_pre_calc_file_in_biom)
- id: out_already_calculated
  doc: "Precalculated file that is missing some otu\npredictions. Output will contain\
    \ predictions from this\nfile and the new predictions as well. [default: none]"
  type: File
  outputBinding:
    glob: $(inputs.in_already_calculated)
- id: out_output_trait_table
  doc: "the output filepath for trait predictions [REQUIRED]\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_trait_table)
cwlVersion: v1.1
baseCommand:
- parallel_predict_traits.py
