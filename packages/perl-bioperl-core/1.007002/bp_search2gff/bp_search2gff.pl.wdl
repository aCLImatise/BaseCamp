version 1.0

task BpSearch2gffpl {
  input {
    File? optional_inputfilename_will
    File? _output_filename
    String? search_result_format
    String? t_slash_type
    Boolean? s_slash_source
    Boolean? method
    Boolean? score_func
    Boolean? loc_func
    Boolean? one_hsp
    Boolean? p_slash_parent
    Boolean? target_slash_no_target
    Boolean? component
    Boolean? m_slash_match
    Boolean? add_id
    Boolean? c_slash_cut_off
    String clone_loc
    String create_loc
  }
  command <<<
    bp_search2gff_pl \
      ~{clone_loc} \
      ~{create_loc} \
      ~{if defined(optional_inputfilename_will) then ("-i " +  '"' + optional_inputfilename_will + '"') else ""} \
      ~{if defined(_output_filename) then ("-o " +  '"' + _output_filename + '"') else ""} \
      ~{if defined(search_result_format) then ("-f " +  '"' + search_result_format + '"') else ""} \
      ~{if defined(t_slash_type) then ("-t/--type " +  '"' + t_slash_type + '"') else ""} \
      ~{if (s_slash_source) then "-s/--source" else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if (score_func) then "--scorefunc" else ""} \
      ~{if (loc_func) then "--locfunc" else ""} \
      ~{if (one_hsp) then "--onehsp" else ""} \
      ~{if (p_slash_parent) then "-p/--parent" else ""} \
      ~{if (target_slash_no_target) then "--target/--notarget" else ""} \
      ~{if (component) then "--component" else ""} \
      ~{if (m_slash_match) then "-m/--match" else ""} \
      ~{if (add_id) then "--addid" else ""} \
      ~{if (c_slash_cut_off) then "-c/--cutoff" else ""}
  >>>
  parameter_meta {
    optional_inputfilename_will: "- (optional) inputfilename, will read\\neither ARGV files or from STDIN"
    _output_filename: "- the output filename [default STDOUT]"
    search_result_format: "- search result format (blast, fasta,waba,axt)\\n(ssearch is fasta format). default is blast."
    t_slash_type: "- if you want to see query or hit information\\nin the GFF report"
    s_slash_source: "- specify the source (will be algorithm name\\notherwise like BLASTN)"
    method: "- the method tag (primary_tag) of the features\\n(default is similarity)"
    score_func: "- a string or a file that when parsed evaluates\\nto a closure which will be passed a feature\\nobject and that returns the score to be printed"
    loc_func: "- a string or a file that when parsed evaluates\\nto a closure which will be passed two\\nfeatures, query and hit, and returns the\\nlocation (Bio::LocationI compliant) for the\\nGFF3 feature created for each HSP; the closure\\nmay use the clone_loc() and create_loc()\\nfunctions for convenience, see their PODs"
    one_hsp: "- only print the first HSP feature for each hit"
    p_slash_parent: "- the parent to which HSP features should refer\\nif not the name of the hit or query (depending\\non --type)"
    target_slash_no_target: "- whether to always add the Target tag or not"
    component: "- generate GFF component fields (chromosome)"
    m_slash_match: "- generate a 'match' line which is a container\\nof all the similarity HSPs"
    add_id: "- add ID tag in the absence of --match"
    c_slash_cut_off: "- specify an evalue cutoff"
    clone_loc: "Title : clone_loc Usage : my $l = clone_loc($feature->location);\\nFunction: Helper function to simplify the task of cloning locations for\\n--locfunc closures.\\nPresently simply implemented using Storable::dclone().\\nExample :\\nReturns : A L<Bio::LocationI> object of the same type and with the\\nsame properties as the argument, but physically different.\\nAll structured properties will be cloned as well.\\nArgs    : A L<Bio::LocationI> compliant object"
    create_loc: "Title : create_loc Usage : my $l = create_loc(\\\"10..12\\\"); Function:\\nHelper function to simplify the task of creating locations for --locfunc\\nclosures. Creates a location from a feature- table formatted string.\\nExample : Returns : A Bio::LocationI object representing the location\\ngiven as formatted string. Args : A GenBank feature-table formatted\\nstring.\\n"
  }
  output {
    File out_stdout = stdout()
    File out__output_filename = "${in__output_filename}"
  }
}