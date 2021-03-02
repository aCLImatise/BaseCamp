class: CommandLineTool
id: feature_merge.cwl
inputs:
- id: in_version_and_exit
  doc: version and exit
  type: string?
  inputBinding:
    prefix: -v
- id: in_seperated_types_merge
  doc: seperated types of features to merge. Must be terms or accessions from the
    SOFA sequence ontology, "ALL", or "NONE". (Can be provided more than once to specify
    multiple merge groups)
  type: string?
  inputBinding:
    prefix: -f
- id: in_strand_merge_feature
  doc: strand, merge feature regardless of strand
  type: string?
  inputBinding:
    prefix: -i
- id: in_sequence_i_d
  doc: sequence id, merge feature regardless of sequence id
  type: string?
  inputBinding:
    prefix: -s
- id: in_merge_features_identical
  doc: merge features with identical coordinates
  type: string?
  inputBinding:
    prefix: -x
- id: in_distance_features_merge
  doc: distance between features to merge
  type: string?
  inputBinding:
    prefix: -t
- id: in_component_features_output
  doc: component features from output
  type: string?
  inputBinding:
    prefix: -e
- id: in_strategy_used_deal
  doc: "strategy used to deal with id collisions between input files.\nmerge: attributes\
    \ of all features with the same primary key will be merged\nappend: entry will\
    \ have a unique, autoincremented primary key assigned to it (default)\nerror:\
    \ exception will be raised. This means you will have to edit the file yourself\
    \ to fix the duplicated IDs\nskip: ignore duplicates, emitting a warning\nreplace:\
    \ keep last duplicate\n"
  type: File?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/feature_merge:1.3.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- feature_merge
