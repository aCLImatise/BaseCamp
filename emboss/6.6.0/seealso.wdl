version 1.0

task Seealso {
  input {
    Boolean? explode
    File? outfile
    File? html
    Boolean? groups
    String? emboss
    Boolean? show_embassy
    Boolean? colon
  }
  command <<<
    seealso \
      ~{if (explode) then "-explode" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if (groups) then "-groups" else ""} \
      ~{if defined(emboss) then ("-emboss " +  '"' + emboss + '"') else ""} \
      ~{if (show_embassy) then "-showembassy" else ""} \
      ~{if (colon) then "-colon" else ""}
  >>>
  parameter_meta {
    explode: "boolean    [N] The groups that EMBOSS applications\\nbelong to have two forms, exploded and not\\nexploded. The exploded group names are more\\nnumerous and often vaguely phrased than the\\nnon-exploded ones. The exploded names are\\nformed from definitions of the group names\\nthat start like NAME1:NAME2 and which are\\nthen expanded into many combinations of the\\nnames as: 'NAME1', 'NAME2', 'NAME1 NAME2',\\nNAME2 NAME1'. The non-expanded names are\\nsimply like: 'NAME1 NAME2'.\\nUsing expanded group names will find many\\nmore programs which share at least some of\\nthe expanded names than using the\\nnon-exploded names and so you will get more\\nprograms reported as sharing a similar\\nfunction than you will if you specify that\\nyou wish to use non-exploded names"
    outfile: "outfile    [stdout] Output file name"
    html: "toggle     [N] If you are sending the output to a file,\\nthis will format it for displaying as a\\ntable in a WWW document."
    groups: "boolean    [N] If you use this option, then only the\\ngroup names will output to the file"
    emboss: "is true). EMBASSY programs"
    show_embassy: "string     If you use this option then this EMBASSY\\npackage program documentation will be\\nsearched. EMBASSY programs are not strictly\\npart of EMBOSS, but use the same code\\nlibraries and share the same look and feel,\\nbut are generally developed by people who\\nwish the programs to be outside of the GNU\\nPublic Licence scheme (Any string)"
    colon: "boolean    [N] The groups that EMBOSS applications\\nbelong to have up to two levels, for example\\nthe primary group 'ALIGNMENT' has several\\nsub-groups, or second-level groups, e.g.:\\nCONSENSUS, DIFFERENCES, DOT PLOTS, GLOBAL,\\nLOCAL, MULTIPLE. To aid programs that parse\\nthe output of seealso that require the names\\nof these subgroups, a colon ':' will be\\nplaced between the first and second level of\\nthe group name if this option is true."
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_html = "${in_html}"
  }
}