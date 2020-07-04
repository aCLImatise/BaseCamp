version 1.0

task AnviImportItemsOrder {
  input {
    File? input_order
    String? path__dbpath
    String? name_what_should
    Boolean? make_default
    File? path
    String? var_5
  }
  command <<<
    anvi-import-items-order \
      ~{path} \
      ~{var_5} \
      ~{if defined(input_order) then ("--input-order " +  '"' + input_order + '"') else ""} \
      ~{if defined(path__dbpath) then ("-p " +  '"' + path__dbpath + '"') else ""} \
      ~{if defined(name_what_should) then ("--name " +  '"' + name_what_should + '"') else ""} \
      ~{true="--make-default" false="" make_default}
  >>>
  parameter_meta {
    input_order: "One of the two important things you must provide: the file that contains the items order. The format of this file is important. It can either contain a proper newick tree in it, or a complete list of 'items' in the target database where every line of the file is simply an item name. If you are providing a newick tree, the entire file should be a single line. I know it sounds hard, but you seriously can do this."
    path__dbpath: "PATH, --db-path DB PATH An appropriate anvi'o database to import the items order. Currently it can be a profile, pan, or genes database. But you should try your chances with other kinds of databases for fun and games. Basically, if the database contains an items order table, then things will work. Otherwise, you will probably get angry errors back in the worst case scenario."
    name_what_should: "NAME     What should we call this order? Give it a concise, single-word name."
    make_default: "You have the option to make this order the default order in the database. Which means, anvi'o will use this one when someone runs the program anvi- interactive and presses draw. Big responsibility. But if you have a 'default' state, it will not work because the default items order in the state file overwrites the one that comes from the database. So not that big of a responsibility."
    path: ""
    var_5: ""
  }
}