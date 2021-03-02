version 1.0

task Wossdata {
  input {
    Boolean? explode
    Boolean? show_keywords
    File? outfile
    File? html
    Boolean? groups
    Boolean? alphabetic
    Boolean? sensitive
    Boolean? obsolete
    String? emboss
    Boolean? show_embassy
    Boolean? colon
    Boolean? gui
  }
  command <<<
    wossdata \
      ~{if (explode) then "-explode" else ""} \
      ~{if (show_keywords) then "-showkeywords" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if (groups) then "-groups" else ""} \
      ~{if (alphabetic) then "-alphabetic" else ""} \
      ~{if (sensitive) then "-sensitive" else ""} \
      ~{if (obsolete) then "-obsolete" else ""} \
      ~{if defined(emboss) then ("-emboss " +  '"' + emboss + '"') else ""} \
      ~{if (show_embassy) then "-showembassy" else ""} \
      ~{if (colon) then "-colon" else ""} \
      ~{if (gui) then "-gui" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    explode: "boolean    [N] The groups that EMBOSS applications\\nbelong to have two forms, exploded and not\\nexploded. The exploded group names are more\\nnumerous and often vaguely phrased than the\\nnon-exploded ones. The exploded names are\\nformed from definitions of the group names\\nthat start like NAME1:NAME2 and which are\\nthen expanded into many combinations of the\\nnames as: 'NAME1', 'NAME2', 'NAME1 NAME2',\\nNAME2 NAME1'. The non-expanded names are\\nsimply like: 'NAME1 NAME2'."
    show_keywords: "boolean    [N] Show keywords with program documentation"
    outfile: "outfile    [stdout] Tool metadata output file"
    html: "toggle     [N] If you are sending the output to a file,\\nthis will format it for displaying as a\\ntable in a WWW document."
    groups: "boolean    [N] If you use this option, then only the\\ngroup names will be output to the file"
    alphabetic: "boolean    [N] If you use this option, then you will\\nget a single list of the program names and\\ndescriptions instead of the programs being\\nlisted in their functional groups."
    sensitive: "boolean    [N] By default, the query keywords are\\nmatched against the EDAM term names (and\\nsynonyms) only. This option also matches the\\nkeywords against the EDAM term definitions\\nand will therefore (typically) report more\\nmatches."
    obsolete: "boolean    [N] The default behaviour is to not use or\\nreturn obsolete terms. This option if set\\nwill include all terms."
    emboss: "is true). EMBASSY programs"
    show_embassy: "string     If you use this option then this EMBASSY\\npackage program documentation will be\\nsearched. EMBASSY programs are not strictly\\npart of EMBOSS, but use the same code\\nlibraries and share the same look and feel,\\nbut are generally developed by people who\\nwish the programs to be outside of the GNU\\nPublic Licence scheme (Any string)"
    colon: "boolean    [N] The groups that EMBOSS applications\\nbelong to up to two levels, for example the\\nprimary group 'ALIGNMENT' has several\\nsub-groups, or second-level groups, e.g.:\\nCONSENSUS, DIFFERENCES, DOT PLOTS, GLOBAL,\\nLOCAL, MULTIPLE. To aid programs that parse\\nthe output of wossname that require the\\nnames of these subgroups, a colon ':' will\\nbe placed between the first and second level\\nof the group name if this option is true.\\nNote: This does not apply if the group names\\nhave been exploded with the 'explode'\\noption."
    gui: "boolean    [N] This option is intended to help those\\nwho are designing Graphical User Interfaces\\nto the EMBOSS applications. Some EMBOSS\\nprograms are inappropriate for running in a\\nGUI, these include other menu programs and\\ninteractive editors. This option allows you\\nto only report those programs that can be\\nrun from a GUI"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_html = "${in_html}"
  }
}