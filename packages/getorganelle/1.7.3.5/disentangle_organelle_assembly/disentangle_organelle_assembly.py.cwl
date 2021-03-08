class: CommandLineTool
id: disentangle_organelle_assembly.py.cwl
inputs:
- id: in_input_fastg_format
  doc: input fastg format file.
  type: File?
  inputBinding:
    prefix: -g
- id: in_input_tab_format
  doc: "input tab format file (*.csv; the postfix 'csv' was in\nconformity with Bandage)\
    \ produced by slim_graph.py."
  type: File?
  inputBinding:
    prefix: -t
- id: in_output_directory
  doc: output directory.
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_organelle_type_embplantptotherptembplantmtembplantnranimalmtfungusmtfungusnranonym
  doc: "organelle type: embplant_pt/other_pt/embplant_mt/embpl\nant_nr/animal_mt/fungus_mt/fungus_nr/anonym."
  type: string?
  inputBinding:
    prefix: -F
- id: in_linear
  doc: "By default, this script would only disentangle the\ncircular graph (the complete\
    \ circular organelle\ngenome), and would directly give up linear/broken\ngraphs).\
    \ Choose this option to try for linear/broken\ncases."
  type: boolean?
  inputBinding:
    prefix: --linear
- id: in_weight_f
  doc: "weight factor for excluding non-target contigs.\nDefault:100.0"
  type: double?
  inputBinding:
    prefix: --weight-f
- id: in_depth_f
  doc: "Depth factor for excluding non-target contigs.\nDefault:10.0"
  type: double?
  inputBinding:
    prefix: --depth-f
- id: in_type_f
  doc: "Type factor for identifying genome type tag.\nDefault:3.0"
  type: double?
  inputBinding:
    prefix: --type-f
- id: in_contamination_depth
  doc: "Depth factor for confirming contaminating contigs.\nDefault:3.0"
  type: double?
  inputBinding:
    prefix: --contamination-depth
- id: in_contamination_similarity
  doc: "Similarity threshold for confirming contaminating\ncontigs. Default:0.9"
  type: double?
  inputBinding:
    prefix: --contamination-similarity
- id: in_no_degenerate
  doc: "Disable making consensus from parallel contig based on\nnucleotide degenerate\
    \ table."
  type: boolean?
  inputBinding:
    prefix: --no-degenerate
- id: in_degenerate_depth
  doc: "Depth factor for confirming parallel contigs.\nDefault:1.5"
  type: double?
  inputBinding:
    prefix: --degenerate-depth
- id: in_degenerate_similarity
  doc: "Similarity threshold for confirming parallel contigs.\nDefault:0.98"
  type: double?
  inputBinding:
    prefix: --degenerate-similarity
- id: in_expected_max_size
  doc: "Expected maximum target genome size. Default: 200000\n(-F embplant_pt/fungus_mt),\
    \ 25000 (-F\nembplant_nr/animal_mt/fungus_nr), 600000 (-F\nembplant_mt/other_pt)"
  type: long?
  inputBinding:
    prefix: --expected-max-size
- id: in_expected_min_size
  doc: 'Expected mininum target genome size. Default: 10000'
  type: long?
  inputBinding:
    prefix: --expected-min-size
- id: in_reverse_lsc
  doc: "For '-F embplant_pt' with complete circular result, by\ndefault, the direction\
    \ of the starting contig (usually\nthe LSC contig) is determined as the direction\
    \ with\nless ORFs. Choose this option to reverse the direction\nof the starting\
    \ contig when result is circular.\nActually, both directions are biologically\
    \ equivalent\nto each other. The reordering of the direction is only\nfor easier\
    \ downstream analysis."
  type: boolean?
  inputBinding:
    prefix: --reverse-lsc
- id: in_max_paths_num
  doc: "Repeats would dramatically increase the number of\npotential isomers (paths).\
    \ This option was used to\nexport a certain amount of paths out of all possible\n\
    paths per assembly graph. Default: 1000"
  type: long?
  inputBinding:
    prefix: --max-paths-num
- id: in_keep_all_polymorphic
  doc: "By default, this script would pick the contig with\nhighest coverage among\
    \ all parallel (polymorphic)\ncontigs when degenerating was not applicable. Choose\n\
    this flag to export all combinations."
  type: boolean?
  inputBinding:
    prefix: --keep-all-polymorphic
- id: in_min_sigma
  doc: "Minimum deviation factor for excluding non-target\ncontigs. Default:0.1"
  type: long?
  inputBinding:
    prefix: --min-sigma
- id: in_min_depth
  doc: "Minimum coverage for a contig to be included in\ndisentangling. Default:0.0"
  type: long?
  inputBinding:
    prefix: --min-depth
- id: in_max_depth
  doc: "Minimum coverage for a contig to be included in\ndisentangling. Default:inf"
  type: long?
  inputBinding:
    prefix: --max-depth
- id: in_max_multiplicity
  doc: "Maximum multiplicity of contigs for disentangling\ngenome paths. Should be\
    \ 1~12. Default:8"
  type: long?
  inputBinding:
    prefix: --max-multiplicity
- id: in_prefix
  doc: "Prefix of output files inside output directory.\nDefault:target"
  type: Directory?
  inputBinding:
    prefix: --prefix
- id: in_keep_temp
  doc: export intermediate graph file.
  type: boolean?
  inputBinding:
    prefix: --keep-temp
- id: in_time_limit
  doc: time limit for the disentangling process. Default:3600
  type: long?
  inputBinding:
    prefix: --time-limit
- id: in_random_seed
  doc: "Random seed (only for disentangling at this moment).\nDefault: 12345"
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_continue
  doc: continue mode.
  type: boolean?
  inputBinding:
    prefix: --continue
- id: in_verbose
  doc: verbose logging.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: for debug.
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_prefix
  doc: "Prefix of output files inside output directory.\nDefault:target"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- disentangle_organelle_assembly.py
