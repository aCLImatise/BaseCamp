class: CommandLineTool
id: bp_search2gff.pl.cwl
inputs:
- id: in_optional_inputfilename_readeither
  doc: "- (optional) inputfilename, will read\neither ARGV files or from STDIN"
  type: File?
  inputBinding:
    prefix: -i
- id: in__output_filename
  doc: '- the output filename [default STDOUT]'
  type: File?
  inputBinding:
    prefix: -o
- id: in_search_result_format
  doc: "- search result format (blast, fasta,waba,axt)\n(ssearch is fasta format).\
    \ default is blast."
  type: string?
  inputBinding:
    prefix: -f
- id: in_type
  doc: "- if you want to see query or hit information\nin the GFF report"
  type: string?
  inputBinding:
    prefix: --type
- id: in_source
  doc: "- specify the source (will be algorithm name\notherwise like BLASTN)"
  type: boolean?
  inputBinding:
    prefix: --source
- id: in_method
  doc: "- the method tag (primary_tag) of the features\n(default is similarity)"
  type: boolean?
  inputBinding:
    prefix: --method
- id: in_score_func
  doc: "- a string or a file that when parsed evaluates\nto a closure which will be\
    \ passed a feature\nobject and that returns the score to be printed"
  type: boolean?
  inputBinding:
    prefix: --scorefunc
- id: in_loc_func
  doc: "- a string or a file that when parsed evaluates\nto a closure which will be\
    \ passed two\nfeatures, query and hit, and returns the\nlocation (Bio::LocationI\
    \ compliant) for the\nGFF3 feature created for each HSP; the closure\nmay use\
    \ the clone_loc() and create_loc()\nfunctions for convenience, see their PODs"
  type: boolean?
  inputBinding:
    prefix: --locfunc
- id: in_one_hsp
  doc: '- only print the first HSP feature for each hit'
  type: boolean?
  inputBinding:
    prefix: --onehsp
- id: in_parent
  doc: "- the parent to which HSP features should refer\nif not the name of the hit\
    \ or query (depending\non --type)"
  type: boolean?
  inputBinding:
    prefix: --parent
- id: in_no_target
  doc: '- whether to always add the Target tag or not'
  type: boolean?
  inputBinding:
    prefix: --notarget
- id: in_component
  doc: '- generate GFF component fields (chromosome)'
  type: boolean?
  inputBinding:
    prefix: --component
- id: in_match
  doc: "- generate a 'match' line which is a container\nof all the similarity HSPs"
  type: boolean?
  inputBinding:
    prefix: --match
- id: in_add_id
  doc: '- add ID tag in the absence of --match'
  type: boolean?
  inputBinding:
    prefix: --addid
- id: in_cut_off
  doc: '- specify an evalue cutoff'
  type: boolean?
  inputBinding:
    prefix: --cutoff
- id: in_clone_loc
  doc: "Title : clone_loc Usage : my $l = clone_loc($feature->location);\nFunction:\
    \ Helper function to simplify the task of cloning locations for\n--locfunc closures.\n\
    Presently simply implemented using Storable::dclone().\nExample :\nReturns : A\
    \ L<Bio::LocationI> object of the same type and with the\nsame properties as the\
    \ argument, but physically different.\nAll structured properties will be cloned\
    \ as well.\nArgs    : A L<Bio::LocationI> compliant object"
  type: string
  inputBinding:
    position: 0
- id: in_create_loc
  doc: "Title : create_loc Usage : my $l = create_loc(\"10..12\"); Function:\nHelper\
    \ function to simplify the task of creating locations for --locfunc\nclosures.\
    \ Creates a location from a feature- table formatted string.\nExample : Returns\
    \ : A Bio::LocationI object representing the location\ngiven as formatted string.\
    \ Args : A GenBank feature-table formatted\nstring.\n"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_filename
  doc: '- the output filename [default STDOUT]'
  type: File?
  outputBinding:
    glob: $(inputs.in__output_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- bp_search2gff.pl
