version 1.0

task Anvipush {
  input {
    String? user
    String? api_url
    File? project_name
    String? tree
    File? items_order
    File? fast_a_file
    File? view_data
    File? additional_layers
    File? state
    File? description
    File? bins
    File? bins_info
    Boolean? delete_if_exists
  }
  command <<<
    anvi_push \
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
      ~{if (delete_if_exists) then "--delete-if-exists" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    user: "The user for an anvi'server. (default: None)"
    api_url: "Anvi'server url (default: https://anvi-server.org)"
    project_name: "Name of the project. Please choose a short but\\ndescriptive name (so anvi'o can use it whenever she\\nneeds to name an output file, or add a new table in a\\ndatabase, or name her first born). (default: None)"
    tree: "NEWICK formatted tree structure (default: None)"
    items_order: "A flat file that contains the order of items you wish\\nthe display using the interactive interface. You may\\nwant to use this if you have a specific order of items\\nin your mind, and do not want to display a tree in the\\nmiddle (or simply you don't have one). The file format\\nis simple: each line should have an item name, and\\nthere should be no header. (default: None)"
    fast_a_file: "A FASTA-formatted input file (default: None)"
    view_data: "A TAB-delimited file for view data (default: None)"
    additional_layers: "A TAB-delimited file for additional layers for splits.\\nThe first column of this file must be split names, and\\nthe remaining columns should be unique attributes. The\\nfile does not need to contain all split names, or\\nvalues for each split in every column. Anvi'o will try\\nto deal with missing data nicely. Each column in this\\nfile will be visualized as a new layer in the tree.\\n(default: None)"
    state: "State file, you can export states from database using\\nanvi-export-state program (default: None)"
    description: "A plain text file that contains some description about\\nthe project. You can use Markdown syntax. The\\ndescription text will be rendered and shown in all\\nrelevant interfaces, including the anvi'o interactive\\ninterface, or anvi'o summary outputs. (default: None)"
    bins: "Tab-delimited file, first column contains tree leaves\\n(gene clusters, splits, contigs etc.) and second\\ncolumn contains which Bin they belong. (default: None)"
    bins_info: "Additional information for bins. The file must contain\\nthree TAB-delimited columns, where the first one must\\nbe a unique bin name, the second should be a 'source',\\nand the last one should be a 7 character HTML color\\ncode (i.e., '#424242'). Source column must contain\\ninformation about the origin of the bin. If these bins\\nare automatically identified by a program like\\nCONCOCT, this column could contain the program name\\nand version. The source information will be associated\\nwith the bin in various interfaces so in a sense it is\\nnot *that* critical what it says there, but on the\\nother hand it is, becuse we should also think about\\npeople who may end up having to work with what we put\\ntogether later. (default: None)"
    delete_if_exists: "Be bold (at your own risk), and delete if exists.\\n(default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_project_name = "${in_project_name}"
  }
}