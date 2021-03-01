version 1.0

task Mcl {
  input {
    File? write_output_file
    Boolean? help
    Boolean? i_show_default
    Boolean? jury_charter
    Int? how_much_ram
    Boolean? show_schemes
    String? overlap
    String? force_connected
    String? check_connected
    Boolean? write_limit
    String? show_log
    String? discard_loops
    Boolean? sum_loops
    Int? increase_loopweights_numfold
    String? quiet_level_logging
    String? analyze
    Int? sort
    Int? digits
    Boolean? write_binary
    Boolean? abc
    Boolean? s_if
    Boolean? etc
    Boolean? expect_values
    String? use_tab
    String? abc_tf
    Boolean? abc_neg_log
    Boolean? abc_neg_log_one_zero
    File? write_graph
    File? write_graph_x
    File? write_expanded
    String? an_not
    File? aa
    Directory? o_dir
    File? az
    Boolean? a_x
    File? ap
    Boolean? use_automatic_naming
    String? tf
    String? icl
    Int? pi
    Int? ph
    Int? assume_input_inflate
    Int? main_inflation_value
    Int? scheme
    Int? resource
    Int? sparse
    Int? te
    Boolean? show
    Boolean? _mode_verbose
    Boolean? _mode_silent
    Int? rigid_pruning_threshold
    Int? inverted_rigid_threshold
    Int? recover_maximally_int
    Int? select_int_needed
    String? pct
    Int? warn_factor
    String? warn_pct
    File? dump_stem
    String? dump
    Int? dump_interval
    Int? dump_modulo
  }
  command <<<
    mcl \
      ~{if defined(write_output_file) then ("-o " +  '"' + write_output_file + '"') else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if (i_show_default) then "-z" else ""} \
      ~{if (jury_charter) then "--jury-charter" else ""} \
      ~{if defined(how_much_ram) then ("-how-much-ram " +  '"' + how_much_ram + '"') else ""} \
      ~{if (show_schemes) then "--show-schemes" else ""} \
      ~{if defined(overlap) then ("-overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(force_connected) then ("-force-connected " +  '"' + force_connected + '"') else ""} \
      ~{if defined(check_connected) then ("-check-connected " +  '"' + check_connected + '"') else ""} \
      ~{if (write_limit) then "--write-limit" else ""} \
      ~{if defined(show_log) then ("-show-log " +  '"' + show_log + '"') else ""} \
      ~{if defined(discard_loops) then ("-discard-loops " +  '"' + discard_loops + '"') else ""} \
      ~{if (sum_loops) then "--sum-loops" else ""} \
      ~{if defined(increase_loopweights_numfold) then ("-c " +  '"' + increase_loopweights_numfold + '"') else ""} \
      ~{if defined(quiet_level_logging) then ("-q " +  '"' + quiet_level_logging + '"') else ""} \
      ~{if defined(analyze) then ("-analyze " +  '"' + analyze + '"') else ""} \
      ~{if defined(sort) then ("-sort " +  '"' + sort + '"') else ""} \
      ~{if defined(digits) then ("-digits " +  '"' + digits + '"') else ""} \
      ~{if (write_binary) then "--write-binary" else ""} \
      ~{if (abc) then "--abc" else ""} \
      ~{if (s_if) then "--sif" else ""} \
      ~{if (etc) then "--etc" else ""} \
      ~{if (expect_values) then "--expect-values" else ""} \
      ~{if defined(use_tab) then ("-use-tab " +  '"' + use_tab + '"') else ""} \
      ~{if defined(abc_tf) then ("-abc-tf " +  '"' + abc_tf + '"') else ""} \
      ~{if (abc_neg_log) then "--abc-neg-log" else ""} \
      ~{if (abc_neg_log_one_zero) then "--abc-neg-log10" else ""} \
      ~{if defined(write_graph) then ("-write-graph " +  '"' + write_graph + '"') else ""} \
      ~{if defined(write_graph_x) then ("-write-graphx " +  '"' + write_graph_x + '"') else ""} \
      ~{if defined(write_expanded) then ("-write-expanded " +  '"' + write_expanded + '"') else ""} \
      ~{if defined(an_not) then ("-annot " +  '"' + an_not + '"') else ""} \
      ~{if defined(aa) then ("-aa " +  '"' + aa + '"') else ""} \
      ~{if defined(o_dir) then ("-odir " +  '"' + o_dir + '"') else ""} \
      ~{if (az) then "-az" else ""} \
      ~{if (a_x) then "-ax" else ""} \
      ~{if defined(ap) then ("-ap " +  '"' + ap + '"') else ""} \
      ~{if (use_automatic_naming) then "--d" else ""} \
      ~{if defined(tf) then ("-tf " +  '"' + tf + '"') else ""} \
      ~{if defined(icl) then ("-icl " +  '"' + icl + '"') else ""} \
      ~{if defined(pi) then ("-pi " +  '"' + pi + '"') else ""} \
      ~{if defined(ph) then ("-ph " +  '"' + ph + '"') else ""} \
      ~{if defined(assume_input_inflate) then ("-if " +  '"' + assume_input_inflate + '"') else ""} \
      ~{if defined(main_inflation_value) then ("-I " +  '"' + main_inflation_value + '"') else ""} \
      ~{if defined(scheme) then ("-scheme " +  '"' + scheme + '"') else ""} \
      ~{if defined(resource) then ("-resource " +  '"' + resource + '"') else ""} \
      ~{if defined(sparse) then ("-sparse " +  '"' + sparse + '"') else ""} \
      ~{if defined(te) then ("-te " +  '"' + te + '"') else ""} \
      ~{if (show) then "--show" else ""} \
      ~{if (_mode_verbose) then "-v" else ""} \
      ~{if (_mode_silent) then "-V" else ""} \
      ~{if defined(rigid_pruning_threshold) then ("-p " +  '"' + rigid_pruning_threshold + '"') else ""} \
      ~{if defined(inverted_rigid_threshold) then ("-P " +  '"' + inverted_rigid_threshold + '"') else ""} \
      ~{if defined(recover_maximally_int) then ("-R " +  '"' + recover_maximally_int + '"') else ""} \
      ~{if defined(select_int_needed) then ("-S " +  '"' + select_int_needed + '"') else ""} \
      ~{if defined(pct) then ("-pct " +  '"' + pct + '"') else ""} \
      ~{if defined(warn_factor) then ("-warn-factor " +  '"' + warn_factor + '"') else ""} \
      ~{if defined(warn_pct) then ("-warn-pct " +  '"' + warn_pct + '"') else ""} \
      ~{if defined(dump_stem) then ("-dump-stem " +  '"' + dump_stem + '"') else ""} \
      ~{if defined(dump) then ("-dump " +  '"' + dump + '"') else ""} \
      ~{if defined(dump_interval) then ("-dump-interval " +  '"' + dump_interval + '"') else ""} \
      ~{if defined(dump_modulo) then ("-dump-modulo " +  '"' + dump_modulo + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_output_file: "!  write output to file <fname>"
    help: "i  output description of options"
    i_show_default: "i  show some of the default settings"
    jury_charter: "i  show the meaning of the jury pruning synopsis"
    how_much_ram: "i  show estimated RAM usage for graphs with <int> nodes"
    show_schemes: "i  show the preset -scheme options"
    overlap: "what to do with overlap (default cut)"
    force_connected: "/n    analyze clustering, make sure it induces cocos"
    check_connected: "/n    analyze clustering, see whether it induces cocos"
    write_limit: "output the limit matrix"
    show_log: "/n      send log to stdout"
    discard_loops: "/n    remove loops in input graphs if any"
    sum_loops: "set loop weight to sum of node arc weights"
    increase_loopweights_numfold: "increase loop-weights <num>-fold"
    quiet_level_logging: "quiet level of logging"
    analyze: "/n       append performance/characteristics measures"
    sort: "order clustering by one of lex|size|revsize|none"
    digits: "precision in interchange (intermediate matrices) output"
    write_binary: "write binary output"
    abc: "expect abc-format (label input), write label output"
    s_if: "expect sif-format (label input), write label output"
    etc: "expect etc-format (label input), write label output"
    expect_values: "accept extended SIF or ETC format (label:weight fields)"
    use_tab: "expect native network format, write label output using dictionary"
    abc_tf: "transform label values"
    abc_neg_log: "log-transform label value, negate sign"
    abc_neg_log_one_zero: "log10-transform label value, negate sign"
    write_graph: "write input matrix to file"
    write_graph_x: "write transformed matrix to file"
    write_expanded: "file name to write expanded graph to"
    an_not: "string describing the experiment"
    aa: "append <suffix> to mcl-created output file name"
    o_dir: "!  use this directory for output"
    az: "i  show output file name mcl would construct"
    a_x: "i  show the suffix mcl constructs from parameters"
    ap: "prepend <prefix> to mcl-created output file name"
    use_automatic_naming: "use automatic naming and use input directory for output"
    tf: "transform matrix values"
    icl: "subcluster this clustering"
    pi: "preprocess by applying inflation with parameter <num>"
    ph: "as -pi, applied before shadowing"
    assume_input_inflate: "assume expanded input, inflate with parameter <num>"
    main_inflation_value: "!  main inflation value (default 2.0)"
    scheme: "!  use a preset resource scheme (cf --show-schemes)"
    resource: "!  allow <int> neighbours throughout computation"
    sparse: "estimated sparse matrix-vector overhead per summand (default 10)"
    te: "!  expansion thread number, use with multiple CPUs"
    show: "(small graphs only [#<20]) dump iterands to *screen*"
    _mode_verbose: "{pruning|explain|clusters|all}    mode verbose"
    _mode_silent: "{pruning|explain|clusters|all}    mode silent"
    rigid_pruning_threshold: "the rigid pruning threshold"
    inverted_rigid_threshold: "(inverted) rigid pruning threshold (cf -z)"
    recover_maximally_int: "recover to maximally <int> entries if needed"
    select_int_needed: "select down to <int> entries if needed"
    pct: "try recovery if mass is less than <pct>"
    warn_factor: "warn if pruning reduces entry count by <int>"
    warn_pct: "warn if pruning reduces mass to <pct> weight"
    dump_stem: "use <str> to construct dump (file) names"
    dump: "<mode> in chr|ite|cls|dag (cf manual page)"
    dump_interval: ":<int>    only dump for iterand indices in this interval"
    dump_modulo: "only dump if the iterand index modulo <int> vanishes"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
    File out_aa = "${in_aa}"
    Directory out_o_dir = "${in_o_dir}"
    File out_az = "${in_az}"
    File out_ap = "${in_ap}"
  }
}