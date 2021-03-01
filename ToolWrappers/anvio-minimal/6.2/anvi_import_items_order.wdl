version 1.0

task Anviimportitemsorder {
  input {
    File? input_order
    File? path__dbpath
    String? name_what_we
    Boolean? make_default
    File? path
    String? var_5
  }
  command <<<
    anvi_import_items_order \
      ~{path} \
      ~{var_5} \
      ~{if defined(input_order) then ("--input-order " +  '"' + input_order + '"') else ""} \
      ~{if defined(path__dbpath) then ("-p " +  '"' + path__dbpath + '"') else ""} \
      ~{if defined(name_what_we) then ("--name " +  '"' + name_what_we + '"') else ""} \
      ~{if (make_default) then "--make-default" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_order: "One of the two important things you must provide: the\\nfile that contains the items order. The format of this\\nfile is important. It can either contain a proper\\nnewick tree in it, or a complete list of 'items' in\\nthe target database where every line of the file is\\nsimply an item name. If you are providing a newick\\ntree, the entire file should be a single line. I know\\nit sounds hard, but you seriously can do this."
    path__dbpath: "PATH, --db-path DB PATH\\nAn appropriate anvi'o database to import the items\\norder. Currently it can be a profile, pan, or genes\\ndatabase. But you should try your chances with other\\nkinds of databases for fun and games. Basically, if\\nthe database contains an items order table, then\\nthings will work. Otherwise, you will probably get\\nangry errors back in the worst case scenario."
    name_what_we: "NAME     What should we call this order? Give it a concise,\\nsingle-word name."
    make_default: "You have the option to make this order the default\\norder in the database. Which means, anvi'o will use\\nthis one when someone runs the program anvi-\\ninteractive and presses draw. Big responsibility. But\\nif you have a 'default' state, it will not work\\nbecause the default items order in the state file\\noverwrites the one that comes from the database. So\\nnot that big of a responsibility.\\n"
    path: ""
    var_5: ""
  }
  output {
    File out_stdout = stdout()
  }
}