version 1.0

task Go2summary {
  input {
    String obj_yaml
    String obj_storable
    String text_html
    String god_b_pre_store
    String ch_adodb_pre_store
  }
  command <<<
    go2summary \
      ~{obj_yaml} \
      ~{obj_storable} \
      ~{text_html} \
      ~{god_b_pre_store} \
      ~{ch_adodb_pre_store}
  >>>
  parameter_meta {
    obj_yaml: "a YAML representation of a GO::Model::Graph object"
    obj_storable: "A dump of the perl GO::Model::Graph object. You need Storable from CPAN for this to work. This is intended to cache objects on the filesystem, for fast access. The obj_storable representation may not be portable"
    text_html: "A html-ified OBO output format"
    god_b_pre_store: "XML that maps directly to the GODB relational schema (can then be loaded using stag-storenode.pl)"
    ch_adodb_pre_store: "XML that maps directly to the Chado relational schema (can then be loaded using stag-storenode.pl)"
  }
}