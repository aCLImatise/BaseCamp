version 1.0

task RsatAddgeneinfo {
  input {
    Boolean? help
    Boolean? verbose
    Boolean? col
    File? specified_standard_input
    File? specified_standard_output
    String? info
    String? before
    String? null
    Boolean? feat_type
    String add_gene_info
  }
  command <<<
    rsat add_gene_info \
      ~{add_gene_info} \
      ~{if (help) then "-help" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if (col) then "-col" else ""} \
      ~{if defined(specified_standard_input) then ("-i " +  '"' + specified_standard_input + '"') else ""} \
      ~{if defined(specified_standard_output) then ("-o " +  '"' + specified_standard_output + '"') else ""} \
      ~{if defined(info) then ("-info " +  '"' + info + '"') else ""} \
      ~{if defined(before) then ("-before " +  '"' + before + '"') else ""} \
      ~{if defined(null) then ("-null " +  '"' + null + '"') else ""} \
      ~{if (feat_type) then "-feattype" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help: "display options"
    verbose: "verbose"
    col: "column containing gene IDs."
    specified_standard_input: "if not specified, the standard input is used.\\nThis allows to place the command within a pipe."
    specified_standard_output: "if not specified, the standard output is used.\\nThis allows to place the command within a pipe."
    info: "information type (supported: id,ctg,strand,left,right,name,descr,names,upstr_neighb_name,upstr_neighb_id,upstr_limit,upstr_size,downstr_neighb_name,downstr_neighb_id,downstr_limit,downstr_size,right_neighb_name,right_neighb_id,right_limit,right_size,left_neighb_name,left_neighb_id,left_limit,left_size)"
    before: "the information before the input line (by default,\\nthe info is added at the end of each input line)."
    null: "to display for undefined values (default: <NULL>)."
    feat_type: "Feature type.\\nSupported: gene,mRNA,tRNA,rRNA,scRNA,misc_RNA,CDS,start_codon,stop_codon,exon"
    add_gene_info: "DESCRIPTION"
  }
  output {
    File out_stdout = stdout()
    File out_specified_standard_output = "${in_specified_standard_output}"
  }
}