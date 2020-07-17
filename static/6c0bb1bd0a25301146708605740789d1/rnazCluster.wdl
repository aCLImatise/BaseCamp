version 1.0

task RnazCluster.pl {
  input {
    Boolean? loci
    Boolean? header
    Boolean? html
    Boolean? html_dir
    Boolean? man
    File? file
  }
  command <<<
    rnazCluster.pl \
      ~{file} \
      ~{true="--loci" false="" loci} \
      ~{true="--header" false="" header} \
      ~{true="--html" false="" html} \
      ~{true="--html-dir" false="" html_dir} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    loci: "Set these flags to print information for ``windows\" and/or ``loci\" in the output. By default, both single windows and combined loci are printed."
    header: "Print a header explaining the fields of the output (see below for a detailed description of the fields)."
    html: "Generates HTML formatted output of the results in the subdirectory \"results\". For this option to work you need to have installed ghostscript and a few programs from the ViennaRNA package. More precisely you need the following executables in your PATH: \"gs\", \"RNAalifold\", \"colorrna.pl\", \"coloraln.pl\". Alternatively you can adjust the locations of these programs directly in the \"rnazCluster.pl\" script. Please note that if you use this option the program will get very slow because the figures have to be generated. It is also important that you have run RNAz with the \"--show-gaps\" option!"
    html_dir: "Name of directory where HTML pages are stored. Default: results"
    man: "Prints a detailed manual page and exits."
    file: ""
  }
}