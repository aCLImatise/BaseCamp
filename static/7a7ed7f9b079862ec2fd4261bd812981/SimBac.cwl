class: CommandLineTool
id: SimBac.cwl
inputs:
- id: in_sets_number_isolates
  doc: Sets the number of isolates (default is 100)
  type: long?
  inputBinding:
    prefix: -N
- id: in_sets_value_theta
  doc: Sets the value of theta, between 0 and 1 (default is 0.01))
  type: long?
  inputBinding:
    prefix: -T
- id: in_sets_minimum_probability
  doc: Sets the minimum probability of mutation in an interval of external recombination
    between 0 & 1 (default is 0)
  type: long?
  inputBinding:
    prefix: -m
- id: in_sets_maximum_probability
  doc: Sets the maximum probability of mutation in an interval of external recombination
    between 0 & 1 (default is 0)
  type: long?
  inputBinding:
    prefix: -M
- id: in_sets_value_r
  doc: Sets the value of R, the site-specific internal recombination rate (default
    is 0.01)
  type: long?
  inputBinding:
    prefix: -R
- id: in_sets_rate_r
  doc: Sets the rate of R external, the site-specific rate of external recombination
    (default is 0)
  type: long?
  inputBinding:
    prefix: -r
- id: in_sets_value_delta
  doc: Sets the value of delta (default is 500)
  type: long?
  inputBinding:
    prefix: -D
- id: in_sets_average_length
  doc: Sets the average length of external recombinant interval (default is 500)
  type: long?
  inputBinding:
    prefix: -e
- id: in_num_sets_number
  doc: ",...,NUM Sets the number and length of the fragments\n(default is 10000)"
  type: long?
  inputBinding:
    prefix: -B
- id: in_sets_gap_fragmentdefault
  doc: Sets the gap between each fragment(default is 0)
  type: long?
  inputBinding:
    prefix: -G
- id: in_use_given_seed
  doc: Use given seed to initiate random number generator
  type: long?
  inputBinding:
    prefix: -s
- id: in_export_data_given
  doc: Export data to given file
  type: File?
  inputBinding:
    prefix: -o
- id: in_export_clonal_genealogy
  doc: Export clonal genealogy to given file
  type: File?
  inputBinding:
    prefix: -c
- id: in_export_local_trees
  doc: Export local trees to given file
  type: File?
  inputBinding:
    prefix: -l
- id: in_write_log_file_internal
  doc: Write log file of internal recombinant break interval locations
  type: File?
  inputBinding:
    prefix: -b
- id: in_write_log_file_external
  doc: Write log file of external recombinant break interval locations
  type: File?
  inputBinding:
    prefix: -f
- id: in_write_log_file_taxa
  doc: Write log file of recombinant break interval locations and relevant taxa (Use
    only recommended for small ARGs)
  type: File?
  inputBinding:
    prefix: -g
- id: in_export_dot_graph
  doc: Export DOT graph to given file
  type: File?
  inputBinding:
    prefix: -d
- id: in_include_ancestral_material
  doc: Include ancestral material in the DOT graph
  type: boolean?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/simbac:0.1a--h9e03d57_0
cwlVersion: v1.1
baseCommand:
- SimBac
