class: CommandLineTool
id: disentangle_organelle_assembly.py.cwl
inputs:
- id: g
  doc: input fastg format file.
  type: string
  inputBinding:
    prefix: -g
- id: t
  doc: input tab format file (*.csv; the postfix 'csv' was in conformity with Bandage)
    produced by slim_fastg.py.
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: output directory.
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: 'organelle type: embplant_pt/other_pt/embplant_mt/embpl ant_nr/animal_mt/fungus_mt/anonym.'
  type: string
  inputBinding:
    prefix: -F
- id: linear
  doc: By default, this script would only disentangle the circular graph (the complete
    circular organelle genome), and would directly give up linear/broken graphs).
    Choose this option to try for linear/broken cases.
  type: boolean
  inputBinding:
    prefix: --linear
- id: weight_f
  doc: weight factor for excluding non-target contigs. Default:100.0
  type: string
  inputBinding:
    prefix: --weight-f
- id: depth_f
  doc: Depth factor for excluding non-target contigs. Default:10.0
  type: string
  inputBinding:
    prefix: --depth-f
- id: type_f
  doc: Type factor for identifying genome type tag. Default:3.0
  type: string
  inputBinding:
    prefix: --type-f
- id: contamination_depth
  doc: Depth factor for confirming contaminating contigs. Default:3.0
  type: string
  inputBinding:
    prefix: --contamination-depth
- id: contamination_similarity
  doc: Similarity threshold for confirming contaminating contigs. Default:0.9
  type: string
  inputBinding:
    prefix: --contamination-similarity
- id: no_degenerate
  doc: Disable making consensus from parallel contig based on nucleotide degenerate
    table.
  type: boolean
  inputBinding:
    prefix: --no-degenerate
- id: degenerate_depth
  doc: Depth factor for confirming parallel contigs. Default:1.5
  type: string
  inputBinding:
    prefix: --degenerate-depth
- id: degenerate_similarity
  doc: Similarity threshold for confirming parallel contigs. Default:0.98
  type: string
  inputBinding:
    prefix: --degenerate-similarity
- id: expected_max_size
  doc: 'Expected maximum target genome size. Default: 200000 (-F embplant_pt/fungus_mt),
    25000 (-F embplant_nr/animal_mt/fungus_mt), 600000 (-F embplant_mt/other_pt)'
  type: string
  inputBinding:
    prefix: --expected-max-size
- id: expected_min_size
  doc: 'Expected mininum target genome size. Default: 10000'
  type: string
  inputBinding:
    prefix: --expected-min-size
- id: reverse_lsc
  doc: For '-F embplant_pt' with complete circular result, by default, the direction
    of the starting contig (usually the LSC contig) is determined as the direction
    with less ORFs. Choose this option to reverse the direction of the starting contig
    when result is circular. Actually, both directions are biologically equivalent
    to each other. The reordering of the direction is only for easier downstream analysis.
  type: boolean
  inputBinding:
    prefix: --reverse-lsc
- id: max_paths_num
  doc: 'Repeats would dramatically increase the number of potential isomers (paths).
    This option was used to export a certain amount of paths out of all possible paths
    per assembly graph. Default: 1000'
  type: long
  inputBinding:
    prefix: --max-paths-num
- id: keep_all_polymorphic
  doc: By default, this script would pick the contig with highest coverage among all
    parallel (polymorphic) contigs when degenerating was not applicable. Choose this
    flag to export all combinations.
  type: boolean
  inputBinding:
    prefix: --keep-all-polymorphic
- id: min_sigma
  doc: Minimum deviation factor for excluding non-target contigs. Default:0.1
  type: long
  inputBinding:
    prefix: --min-sigma
- id: min_depth
  doc: Minimum coverage for a contig to be included in disentangling. Default:0.0
  type: long
  inputBinding:
    prefix: --min-depth
- id: max_depth
  doc: Minimum coverage for a contig to be included in disentangling. Default:inf
  type: long
  inputBinding:
    prefix: --max-depth
- id: max_multiplicity
  doc: Maximum multiplicity of contigs for disentangling genome paths. Should be 1~12.
    Default:8
  type: long
  inputBinding:
    prefix: --max-multiplicity
- id: prefix
  doc: Prefix of output files inside output directory. Default:target
  type: string
  inputBinding:
    prefix: --prefix
- id: keep_temp
  doc: export intermediate graph file.
  type: boolean
  inputBinding:
    prefix: --keep-temp
- id: time_limit
  doc: time limit for the disentangling process. Default:3600
  type: string
  inputBinding:
    prefix: --time-limit
- id: random_seed
  doc: 'Random seed (only for disentangling at this moment). Default: 12345'
  type: string
  inputBinding:
    prefix: --random-seed
- id: continue
  doc: continue mode.
  type: boolean
  inputBinding:
    prefix: --continue
- id: verbose
  doc: verbose logging.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: for debug.
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- disentangle_organelle_assembly.py
