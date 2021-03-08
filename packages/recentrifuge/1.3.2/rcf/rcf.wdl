version 1.0

task Rcf {
  input {
    File? nodes_path
    Int? format
    File? centrifuge_output_files
    File? generic
    File? lm_at
    File? clark
    File? kraken
    File? out_html
    String? extra
    Int? controls
    Int? scoring
    Int? min_score
    Int? min_tax_a
    String? exclude
    String? include
    Boolean? avoid_cross
    Int? ctrl_min_score
    Int? ctrl_min_tax_a
    String? summary
    Boolean? take_out_root
    Boolean? no_kol_lapse
    Boolean? debug
    Boolean? sequential
    Boolean? v
    String checks
  }
  command <<<
    rcf \
      ~{checks} \
      ~{if defined(nodes_path) then ("--nodespath " +  '"' + nodes_path + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(centrifuge_output_files) then ("--file " +  '"' + centrifuge_output_files + '"') else ""} \
      ~{if defined(generic) then ("--generic " +  '"' + generic + '"') else ""} \
      ~{if defined(lm_at) then ("--lmat " +  '"' + lm_at + '"') else ""} \
      ~{if defined(clark) then ("--clark " +  '"' + clark + '"') else ""} \
      ~{if defined(kraken) then ("--kraken " +  '"' + kraken + '"') else ""} \
      ~{if defined(out_html) then ("--outhtml " +  '"' + out_html + '"') else ""} \
      ~{if defined(extra) then ("--extra " +  '"' + extra + '"') else ""} \
      ~{if defined(controls) then ("--controls " +  '"' + controls + '"') else ""} \
      ~{if defined(scoring) then ("--scoring " +  '"' + scoring + '"') else ""} \
      ~{if defined(min_score) then ("--minscore " +  '"' + min_score + '"') else ""} \
      ~{if defined(min_tax_a) then ("--mintaxa " +  '"' + min_tax_a + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if (avoid_cross) then "--avoidcross" else ""} \
      ~{if defined(ctrl_min_score) then ("--ctrlminscore " +  '"' + ctrl_min_score + '"') else ""} \
      ~{if defined(ctrl_min_tax_a) then ("--ctrlmintaxa " +  '"' + ctrl_min_tax_a + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if (take_out_root) then "--takeoutroot" else ""} \
      ~{if (no_kol_lapse) then "--nokollapse" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (sequential) then "--sequential" else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/recentrifuge:1.3.2--py_0"
  }
  parameter_meta {
    nodes_path: "path for the nodes information files (nodes.dmp and\\nnames.dmp from NCBI)"
    format: "Format of the output files from a generic classifier\\nincluded with the option -g. It is a string like\\n\\\"TYP:csv,TID:1,LEN:3,SCO:6,UNC:0\\\" where valid file\\nTYPes are csv/tsv/ssv, and the rest of fields indicate\\nthe number of column used (starting in 1) for the\\nTaxIDs assigned, the LENgth of the read, the SCOre\\ngiven to the assignment, and the taxid code used for\\nUNClassified reads"
    centrifuge_output_files: "Centrifuge output files. If a single directory is\\nentered, every .out file inside will be taken as a\\ndifferent sample. Multiple -f is available to include\\nseveral Centrifuge samples."
    generic: "Output file from a generic classifier. It requires the\\nflag --format (see such option for details). Multiple\\n-g is available to include several generic samples."
    lm_at: "LMAT output dir or file prefix. If just \\\".\\\" is\\nentered, every subdirectory under the current\\ndirectory will be taken as a sample and scanned\\nlooking for LMAT output files. Multiple -l is\\navailable to include several samples."
    clark: "CLARK full-mode output files. If a single directory is\\nentered, every .csv file inside will be taken as a\\ndifferent sample. Multiple -r is available to include\\nseveral CLARK, CLARK-l, and CLARK-S full-mode samples."
    kraken: "Kraken output files. If a single directory is entered,\\nevery .krk file inside will be taken as a different\\nsample. Multiple -k is available to include several\\nKraken (version 1 or 2) samples."
    out_html: "HTML output file (if not given, the filename will be\\ninferred from input files)"
    extra: "type of extra output to be generated, and can be one\\nof ['FULL', 'CMPLXCRUNCHER', 'CSV', 'TSV']"
    controls: "this number of first samples will be treated as\\nnegative controls; default is no controls"
    scoring: "type of scoring to be applied, and can be one of\\n['SHEL', 'LENGTH', 'LOGLENGTH', 'NORMA', 'LMAT',\\n'CLARK_C', 'CLARK_G', 'KRAKEN', 'GENERIC']"
    min_score: "minimum score/confidence of the classification of a\\nread to pass the quality filter; all pass by default"
    min_tax_a: "minimum taxa to avoid collapsing one level into the\\nparent (if not specified a value will be automatically\\nassigned)"
    exclude: "NCBI taxid code to exclude a taxon and all underneath\\n(multiple -x is available to exclude several taxid)"
    include: "NCBI taxid code to include a taxon and all underneath\\n(multiple -i is available to include several taxid);\\nby default, all the taxa are considered for inclusion"
    avoid_cross: "avoid cross analysis"
    ctrl_min_score: "minimum score/confidence of the classification of a\\nread in control samples to pass the quality filter; it\\ndefaults to \\\"minscore\\\""
    ctrl_min_tax_a: "minimum taxa to avoid collapsing one level into the\\nparent (if not specified a value will be automatically\\nassigned)"
    summary: "select to \\\"add\\\" summary samples to other samples, or\\nto \\\"only\\\" show summary samples or to \\\"avoid\\\" summaries\\nat all"
    take_out_root: "remove counts directly assigned to the \\\"root\\\" level"
    no_kol_lapse: "show the \\\"cellular organisms\\\" taxon"
    debug: "increase output verbosity and perform additional"
    sequential: "deactivate parallel processing"
    v: ""
    checks: "--strain              set strain level instead of species as the resolution"
  }
  output {
    File out_stdout = stdout()
    File out_centrifuge_output_files = "${in_centrifuge_output_files}"
    File out_generic = "${in_generic}"
    File out_lm_at = "${in_lm_at}"
    File out_clark = "${in_clark}"
    File out_kraken = "${in_kraken}"
  }
}