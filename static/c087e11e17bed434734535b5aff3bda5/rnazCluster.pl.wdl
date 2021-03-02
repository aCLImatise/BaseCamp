version 1.0

task RnazClusterpl {
  input {
    Float? cut_off
    Boolean? windows
    Boolean? header
    File? html
    Boolean? html_dir
    Boolean? man
  }
  command <<<
    rnazCluster_pl \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if (windows) then "--windows" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (html) then "--html" else ""} \
      ~{if (html_dir) then "--html-dir" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cut_off: "Only consider hits with RNAz class probablility P>X\\n(Default:0.5)"
    windows: "Set these flags to print information for ``windows\\\" and/or\\n``loci\\\" in the output. By default, both single windows and\\ncombined loci are printed."
    header: "Print a header explaining the fields of the output (see below\\nfor a detailed description of the fields)."
    html: "Generates HTML formatted output of the results in the\\nsubdirectory \\\"results\\\". For this option to work you need to have\\ninstalled ghostscript and a few programs from the ViennaRNA\\npackage. More precisely you need the following executables in\\nyour PATH: \\\"gs\\\", \\\"RNAalifold\\\", \\\"colorrna.pl\\\", \\\"coloraln.pl\\\".\\nAlternatively you can adjust the locations of these programs\\ndirectly in the \\\"rnazCluster.pl\\\" script. Please note that if you\\nuse this option the program will get very slow because the\\nfigures have to be generated. It is also important that you have\\nrun RNAz with the \\\"--show-gaps\\\" option!"
    html_dir: "Name of directory where HTML pages are stored. Default: results"
    man: "Prints a detailed manual page and exits."
  }
  output {
    File out_stdout = stdout()
    File out_html = "${in_html}"
  }
}