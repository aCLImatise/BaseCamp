version 1.0

task BpSearch2gffpl {
  input {
    File? optional_inputfilename_readeither
    File? _output_filename
    String? search_result_format
    String? type
    Boolean? source
    Boolean? method
    Boolean? score_func
    Boolean? loc_func
    Boolean? one_hsp
    Boolean? parent
    Boolean? no_target
    Boolean? component
    Boolean? match
    Boolean? add_id
    Boolean? cut_off
    String clone_loc
    String create_loc
  }
  command <<<
    bp_search2gff_pl \
      ~{clone_loc} \
      ~{create_loc} \
      ~{if defined(optional_inputfilename_readeither) then ("-i " +  '"' + optional_inputfilename_readeither + '"') else ""} \
      ~{if defined(_output_filename) then ("-o " +  '"' + _output_filename + '"') else ""} \
      ~{if defined(search_result_format) then ("-f " +  '"' + search_result_format + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if (source) then "--source" else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if (score_func) then "--scorefunc" else ""} \
      ~{if (loc_func) then "--locfunc" else ""} \
      ~{if (one_hsp) then "--onehsp" else ""} \
      ~{if (parent) then "--parent" else ""} \
      ~{if (no_target) then "--notarget" else ""} \
      ~{if (component) then "--component" else ""} \
      ~{if (match) then "--match" else ""} \
      ~{if (add_id) then "--addid" else ""} \
      ~{if (cut_off) then "--cutoff" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    optional_inputfilename_readeither: "- (optional) inputfilename, will read\\neither ARGV files or from STDIN"
    _output_filename: "- the output filename [default STDOUT]"
    search_result_format: "- search result format (blast, fasta,waba,axt)\\n(ssearch is fasta format). default is blast."
    type: "- if you want to see query or hit information\\nin the GFF report"
    source: "- specify the source (will be algorithm name\\notherwise like BLASTN)"
    method: "- the method tag (primary_tag) of the features\\n(default is similarity)"
    score_func: "- a string or a file that when parsed evaluates\\nto a closure which will be passed a feature\\nobject and that returns the score to be printed"
    loc_func: "- a string or a file that when parsed evaluates\\nto a closure which will be passed two\\nfeatures, query and hit, and returns the\\nlocation (Bio::LocationI compliant) for the\\nGFF3 feature created for each HSP; the closure\\nmay use the clone_loc() and create_loc()\\nfunctions for convenience, see their PODs"
    one_hsp: "- only print the first HSP feature for each hit"
    parent: "- the parent to which HSP features should refer\\nif not the name of the hit or query (depending\\non --type)"
    no_target: "- whether to always add the Target tag or not"
    component: "- generate GFF component fields (chromosome)"
    match: "- generate a 'match' line which is a container\\nof all the similarity HSPs"
    add_id: "- add ID tag in the absence of --match"
    cut_off: "- specify an evalue cutoff"
    clone_loc: "Title : clone_loc Usage : my $l = clone_loc($feature->location);\\nFunction: Helper function to simplify the task of cloning locations for\\n--locfunc closures.\\nPresently simply implemented using Storable::dclone().\\nExample :\\nReturns : A L<Bio::LocationI> object of the same type and with the\\nsame properties as the argument, but physically different.\\nAll structured properties will be cloned as well.\\nArgs    : A L<Bio::LocationI> compliant object"
    create_loc: "Title : create_loc Usage : my $l = create_loc(\\\"10..12\\\"); Function:\\nHelper function to simplify the task of creating locations for --locfunc\\nclosures. Creates a location from a feature- table formatted string.\\nExample : Returns : A Bio::LocationI object representing the location\\ngiven as formatted string. Args : A GenBank feature-table formatted\\nstring.\\n"
  }
  output {
    File out_stdout = stdout()
    File out__output_filename = "${in__output_filename}"
  }
}