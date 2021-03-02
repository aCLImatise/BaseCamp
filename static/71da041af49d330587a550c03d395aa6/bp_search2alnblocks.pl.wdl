version 1.0

task BpSearch2alnblockspl {
  input {
    Boolean? max_evalue
    Boolean? mine_value
    Boolean? min_len
    Boolean? max_id
    Boolean? mini_d
    Boolean? optional_input_filename
    File? optional_output_filename
    Boolean? format
    String? out_format
    Boolean? verbose
  }
  command <<<
    bp_search2alnblocks_pl \
      ~{if (max_evalue) then "--maxevalue" else ""} \
      ~{if (mine_value) then "--minevalue" else ""} \
      ~{if (min_len) then "--minlen" else ""} \
      ~{if (max_id) then "--maxid" else ""} \
      ~{if (mini_d) then "--minid" else ""} \
      ~{if (optional_input_filename) then "--input" else ""} \
      ~{if (optional_output_filename) then "--output" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_evalue: "Maximum E-value for an HSP"
    mine_value: "Minimum E-value for an HSP"
    min_len: "Minimum length of an HSP [default 0]"
    max_id: "Maximum Percent Id [default 100]\\n(to help remove sequences which are really close)"
    mini_d: "Minimum Percent Identity for an HSP [default 0]"
    optional_input_filename: "An optional input filename (expects input on STDIN by default)"
    optional_output_filename: "An optional output filename (exports to STDOUT by default)"
    format: "Specify a different Search Alignment format-\\n{fasta, axt, waba, blast, blastxml} are all permitted\\nalthough the format must have actual alignment\\nsequence for this script to work\\nSee L<Bio::SearchIO> for more information."
    out_format: "format for the alignment blocks, anything\\nL<Bio::AlignIO> supports."
    verbose: "Turn on debugging"
  }
  output {
    File out_stdout = stdout()
    File out_optional_output_filename = "${in_optional_output_filename}"
  }
}