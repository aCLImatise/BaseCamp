version 1.0

task AnviPush {
  input {
    String? user
    String? api_url
    String? project_name
    String? tree
    String? items_order
    String? fast_a_file
    String? view_data
    String? additional_layers
    String? state
    String? description
    String? bins
    String? bins_info
    Boolean? delete_if_exists
  }
  command <<<
    anvi-push \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(api_url) then ("--api-url " +  '"' + api_url + '"') else ""} \
      ~{if defined(project_name) then ("--project-name " +  '"' + project_name + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(items_order) then ("--items-order " +  '"' + items_order + '"') else ""} \
      ~{if defined(fast_a_file) then ("--fasta-file " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(view_data) then ("--view-data " +  '"' + view_data + '"') else ""} \
      ~{if defined(additional_layers) then ("--additional-layers " +  '"' + additional_layers + '"') else ""} \
      ~{if defined(state) then ("--state " +  '"' + state + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""} \
      ~{if defined(bins_info) then ("--bins-info " +  '"' + bins_info + '"') else ""} \
      ~{true="--delete-if-exists" false="" delete_if_exists}
  >>>
  parameter_meta {
    user: "The user for an anvi'server."
    api_url: "Anvi'server url"
    project_name: "Name of the project. Please choose a short but descriptive name (so anvi'o can use it whenever she needs to name an output file, or add a new table in a database, or name her first born)."
    tree: "NEWICK formatted tree structure"
    items_order: "A flat file that contains the order of items you wish the display using the interactive interface. You may want to use this if you have a specific order of items in your mind, and do not want to display a tree in the middle (or simply you don't have one). The file format is simple: each line should have an item name, and there should be no header."
    fast_a_file: "A FASTA-formatted input file"
    view_data: "A TAB-delimited file for view data"
    additional_layers: "A TAB-delimited file for additional layers for splits. The first column of this file must be split names, and the remaining columns should be unique attributes. The file does not need to contain all split names, or values for each split in every column. Anvi'o will try to deal with missing data nicely. Each column in this file will be visualized as a new layer in the tree."
    state: "State file, you can export states from database using anvi-export-state program"
    description: "A plain text file that contains some description about the project. You can use Markdwon syntax. The description text will be rendered and shown in all relevant interfaces, including the anvi'o interactive interface, or anvi'o summary outputs."
    bins: "Tab-delimited file, first column contains tree leaves (gene clusters, splits, contigs etc.) and second column contains which Bin they belong."
    bins_info: "Additional information for bins. The file must contain three TAB-delimited columns, where the first one must be a unique bin name, the second should be a 'source', and the last one should be a 7 character HTML color code (i.e., '#424242'). Source column must contain information about the origin of the bin. If these bins are automatically identified by a program like CONCOCT, this column could contain the program name and version. The source information will be associated with the bin in various interfaces so in a sense it is not *that* critical what it says there, but on the other hand it is, becuse we should also think about people who may end up having to work with what we put together later."
    delete_if_exists: "Be bold (at your own risk), and delete if exists."
  }
}