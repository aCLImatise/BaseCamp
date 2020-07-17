version 1.0

task Rcf {
  input {
    File? nodes_path
    String? format
    File? file
    File? generic
    File? lm_at
    File? clark
    File? kraken
    File? out_html
    String? extra
    String? controls
    String? scoring
    String? min_score
    Int? min_tax_a
    String? exclude
    String? include
    Boolean? avoid_cross
    String? ctrl_min_score
    Int? ctrl_min_tax_a
    String? summary
    Boolean? take_out_root
    Boolean? no_kol_lapse
    Boolean? debug
    Boolean? sequential
    Boolean? v
  }
  command <<<
    rcf \
      ~{if defined(nodes_path) then ("--nodespath " +  '"' + nodes_path + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
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
      ~{true="--avoidcross" false="" avoid_cross} \
      ~{if defined(ctrl_min_score) then ("--ctrlminscore " +  '"' + ctrl_min_score + '"') else ""} \
      ~{if defined(ctrl_min_tax_a) then ("--ctrlmintaxa " +  '"' + ctrl_min_tax_a + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{true="--takeoutroot" false="" take_out_root} \
      ~{true="--nokollapse" false="" no_kol_lapse} \
      ~{true="--debug" false="" debug} \
      ~{true="--sequential" false="" sequential} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    nodes_path: "path for the nodes information files (nodes.dmp and names.dmp from NCBI)"
    format: "Format of the output files from a generic classifier included with the option -g. It is a string like \"TYP:csv,TID:1,LEN:3,SCO:6,UNC:0\" where valid file TYPes are csv/tsv/ssv, and the rest of fields indicate the number of column used (starting in 1) for the TaxIDs assigned, the LENgth of the read, the SCOre given to the assignment, and the taxid code used for UNClassified reads"
    file: "Centrifuge output files. If a single directory is entered, every .out file inside will be taken as a different sample. Multiple -f is available to include several Centrifuge samples."
    generic: "Output file from a generic classifier. It requires the flag --format (see such option for details). Multiple -g is available to include several generic samples."
    lm_at: "LMAT output dir or file prefix. If just \".\" is entered, every subdirectory under the current directory will be taken as a sample and scanned looking for LMAT output files. Multiple -l is available to include several samples."
    clark: "CLARK full-mode output files. If a single directory is entered, every .csv file inside will be taken as a different sample. Multiple -r is available to include several CLARK, CLARK-l, and CLARK-S full-mode samples."
    kraken: "Kraken output files. If a single directory is entered, every .krk file inside will be taken as a different sample. Multiple -k is available to include several Kraken (version 1 or 2) samples."
    out_html: "HTML output file (if not given, the filename will be inferred from input files)"
    extra: "type of extra output to be generated, and can be one of ['FULL', 'CMPLXCRUNCHER', 'CSV', 'TSV']"
    controls: "this number of first samples will be treated as negative controls; default is no controls"
    scoring: "type of scoring to be applied, and can be one of ['SHEL', 'LENGTH', 'LOGLENGTH', 'NORMA', 'LMAT', 'CLARK_C', 'CLARK_G', 'KRAKEN', 'GENERIC']"
    min_score: "minimum score/confidence of the classification of a read to pass the quality filter; all pass by default"
    min_tax_a: "minimum taxa to avoid collapsing one level into the parent (if not specified a value will be automatically assigned)"
    exclude: "NCBI taxid code to exclude a taxon and all underneath (multiple -x is available to exclude several taxid)"
    include: "NCBI taxid code to include a taxon and all underneath (multiple -i is available to include several taxid); by default, all the taxa are considered for inclusion"
    avoid_cross: "avoid cross analysis"
    ctrl_min_score: "minimum score/confidence of the classification of a read in control samples to pass the quality filter; it defaults to \"minscore\""
    ctrl_min_tax_a: "minimum taxa to avoid collapsing one level into the parent (if not specified a value will be automatically assigned)"
    summary: "select to \"add\" summary samples to other samples, or to \"only\" show summary samples or to \"avoid\" summaries at all"
    take_out_root: "remove counts directly assigned to the \"root\" level"
    no_kol_lapse: "show the \"cellular organisms\" taxon"
    debug: "increase output verbosity and perform additional checks"
    sequential: "deactivate parallel processing"
    v: ""
  }
}