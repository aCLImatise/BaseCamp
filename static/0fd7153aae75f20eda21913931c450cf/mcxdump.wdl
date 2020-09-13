version 1.0

task Mcxdump {
  input {
    File? imx
    File? icl
    File? imx_cat
    File? imx_tree
    File? output_file_fname
    File? tab
    File? tabc
    File? tab_r
    Boolean? lazy_tab
    Boolean? no_values
    String? prefix_c
    Boolean? no_loops
    Boolean? omit_empty
    Int? sort
    Boolean? force_loops
    Int? cat_max
    File? split_stem
    Boolean? write_matrix
    Boolean? transpose
    Boolean? tf
    Boolean? dump_pairs
    Boolean? dump_upper
    Boolean? dump_upper_i
    Boolean? dump_lower
    Boolean? dump_lower_i
    Boolean? dump_lines
    Boolean? dump_r_lines
    Boolean? dump_v_lines
    String? dump_s_if
    String? dump_s_if_x
    Boolean? newick
    Boolean? dump_table
    Int? table_n_fields
    Int? table_nlines
    Boolean? dump_lead_off
    Int? digits
    Boolean? write_tabc
    Boolean? write_tab_r
    Boolean? dump_do_mr
    Boolean? dump_do_mc
    Boolean? skeleton
    String? sep_lead
    String? sep_field
    String? sep_value
    String? sep_cat
    Boolean? help
  }
  command <<<
    mcxdump \
      ~{if defined(imx) then ("-imx " +  '"' + imx + '"') else ""} \
      ~{if defined(icl) then ("-icl " +  '"' + icl + '"') else ""} \
      ~{if defined(imx_cat) then ("-imx-cat " +  '"' + imx_cat + '"') else ""} \
      ~{if defined(imx_tree) then ("-imx-tree " +  '"' + imx_tree + '"') else ""} \
      ~{if defined(output_file_fname) then ("-o " +  '"' + output_file_fname + '"') else ""} \
      ~{if defined(tab) then ("-tab " +  '"' + tab + '"') else ""} \
      ~{if defined(tabc) then ("-tabc " +  '"' + tabc + '"') else ""} \
      ~{if defined(tab_r) then ("-tabr " +  '"' + tab_r + '"') else ""} \
      ~{if (lazy_tab) then "--lazy-tab" else ""} \
      ~{if (no_values) then "--no-values" else ""} \
      ~{if defined(prefix_c) then ("-prefixc " +  '"' + prefix_c + '"') else ""} \
      ~{if (no_loops) then "--no-loops" else ""} \
      ~{if (omit_empty) then "--omit-empty" else ""} \
      ~{if defined(sort) then ("-sort " +  '"' + sort + '"') else ""} \
      ~{if (force_loops) then "--force-loops" else ""} \
      ~{if defined(cat_max) then ("-cat-max " +  '"' + cat_max + '"') else ""} \
      ~{if defined(split_stem) then ("-split-stem " +  '"' + split_stem + '"') else ""} \
      ~{if (write_matrix) then "--write-matrix" else ""} \
      ~{if (transpose) then "--transpose" else ""} \
      ~{if (tf) then "-tf" else ""} \
      ~{if (dump_pairs) then "--dump-pairs" else ""} \
      ~{if (dump_upper) then "--dump-upper" else ""} \
      ~{if (dump_upper_i) then "--dump-upperi" else ""} \
      ~{if (dump_lower) then "--dump-lower" else ""} \
      ~{if (dump_lower_i) then "--dump-loweri" else ""} \
      ~{if (dump_lines) then "--dump-lines" else ""} \
      ~{if (dump_r_lines) then "--dump-rlines" else ""} \
      ~{if (dump_v_lines) then "--dump-vlines" else ""} \
      ~{if defined(dump_s_if) then ("-dump-sif " +  '"' + dump_s_if + '"') else ""} \
      ~{if defined(dump_s_if_x) then ("-dump-sifx " +  '"' + dump_s_if_x + '"') else ""} \
      ~{if (newick) then "--newick" else ""} \
      ~{if (dump_table) then "--dump-table" else ""} \
      ~{if defined(table_n_fields) then ("-table-nfields " +  '"' + table_n_fields + '"') else ""} \
      ~{if defined(table_nlines) then ("-table-nlines " +  '"' + table_nlines + '"') else ""} \
      ~{if (dump_lead_off) then "--dump-lead-off" else ""} \
      ~{if defined(digits) then ("-digits " +  '"' + digits + '"') else ""} \
      ~{if (write_tabc) then "--write-tabc" else ""} \
      ~{if (write_tab_r) then "--write-tabr" else ""} \
      ~{if (dump_do_mr) then "--dump-domr" else ""} \
      ~{if (dump_do_mc) then "--dump-domc" else ""} \
      ~{if (skeleton) then "--skeleton" else ""} \
      ~{if defined(sep_lead) then ("-sep-lead " +  '"' + sep_lead + '"') else ""} \
      ~{if defined(sep_field) then ("-sep-field " +  '"' + sep_field + '"') else ""} \
      ~{if defined(sep_value) then ("-sep-value " +  '"' + sep_value + '"') else ""} \
      ~{if defined(sep_cat) then ("-sep-cat " +  '"' + sep_cat + '"') else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    imx: "read matrix from file <fname>"
    icl: "read clustering from file <fname>, dump lines"
    imx_cat: "dump multiple matrices encoded in cat file"
    imx_tree: "stackify and dump multiple matrices encoded in cone file"
    output_file_fname: "output to file <fname> (- for STDOUT)"
    tab: "read tab file from <fname> for all identifiers"
    tabc: "read tab file from <fname> for column domain identifiers"
    tab_r: "read tab file from <fname> for row domain identifiers"
    lazy_tab: "tab file(s) may mismatch matrix domain(s)"
    no_values: "do not emit values"
    prefix_c: "prefix column indices with <string>"
    no_loops: "do not include self in listing"
    omit_empty: "skip columns with no entries"
    sort: "{ascending,descending} sort mode"
    force_loops: "force self in listing"
    cat_max: "only do the first <num> files"
    split_stem: "split multiple matrices over different files"
    write_matrix: "dump mcl matrix"
    transpose: "work with the transposed matrix"
    tf: "<func(arg)[, func(arg)]*>     apply unary transformations to input matrix values"
    dump_pairs: "dump a single column/row matrix pair per output line"
    dump_upper: "dump upper part of the matrix excluding diagonal"
    dump_upper_i: "dump upper part of the matrix including diagonal"
    dump_lower: "dump lower part of the matrix excluding diagonal"
    dump_lower_i: "dump lower part of the matrix including diagonal"
    dump_lines: "join all row entries on a single line"
    dump_r_lines: "as --dump-lines, do not emit the leading column identifier"
    dump_v_lines: "join all row entries on a single line, print column value"
    dump_s_if: "dump SIF format with second field set to <relationship-type>"
    dump_s_if_x: "as -dump-sif, output extended label:weight format"
    newick: "write newick string"
    dump_table: "dump complete matrix including zeroes"
    table_n_fields: "limit table dump to first <num> fields"
    table_nlines: "limit table dump to first <num> lines"
    dump_lead_off: "do not dump lead node (with --dump-table)"
    digits: "precision to use in interchange format"
    write_tabc: "write tab file on column domain"
    write_tab_r: "write tab file on row domain"
    dump_do_mr: "dump the row domain"
    dump_do_mc: "dump the col domain"
    skeleton: "create empty matrix, honour domains"
    sep_lead: "use <string> to separate col from row list (default tab)"
    sep_field: "use <string> to separate row indices (default tab)"
    sep_value: "use <string> as node/value separator (default colon)"
    sep_cat: "use <string> to separate cat matrix dumps (cf -imx-cat)"
    help: "print this help"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_fname = "${in_output_file_fname}"
  }
}