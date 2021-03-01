version 1.0

task PanACoTACorepers {
  input {
    Int? pangenome_file_line
    Directory? specify_output_directory
    Int? to_l
    Boolean? add_option_allow
    Boolean? add_option_want
    Boolean? when_you_specify
    Boolean? verbose
    Boolean? quiet
    String genome_dot
  }
  command <<<
    PanACoTA corepers \
      ~{genome_dot} \
      ~{if defined(pangenome_file_line) then ("-p " +  '"' + pangenome_file_line + '"') else ""} \
      ~{if defined(specify_output_directory) then ("-o " +  '"' + specify_output_directory + '"') else ""} \
      ~{if defined(to_l) then ("--tol " +  '"' + to_l + '"') else ""} \
      ~{if (add_option_allow) then "-M" else ""} \
      ~{if (add_option_want) then "-X" else ""} \
      ~{if (when_you_specify) then "-F" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/panacota:1.2.0--py_0"
  }
  parameter_meta {
    pangenome_file_line: "PanGenome file (1 line per family, first column is fam\\nnumber)"
    specify_output_directory: "Specify the output directory for your core/persistent"
    to_l: "min % of genomes having at least 1 member in a family to\\nconsider the family as persistent (between 0 and 1,\\ndefault is 1 = 100% of genomes = Core genome).By default,\\nthe minimum number of genomes will be ceil('tol'*N) (N\\nbeing the total number of genomes). If you want to use\\nfloor('tol'*N) instead, add the '-F' option."
    add_option_allow: "Add this option if you allow several members in any\\ngenome of a family. By default, only 1 (or 0 if tol<1)\\nmember per genome are allowed in all genomes. If you want\\nto allow exactly 1 member in 'tol'% of the genomes, and\\n0, 1 or several members in the '1-tol'% left, use the\\noption -X instead of this one: -M and -X options are not\\ncompatible."
    add_option_want: "Add this option if you want to allow families having\\nseveral members only in '1-tol'% of the genomes. In the\\nother genomes, only 1 member exactly is allowed. This\\noption is not compatible with -M (which is allowing\\nmultigenic families: having several members in any number\\nof genomes)."
    when_you_specify: "When you specify the '-tol' option, with a number lower\\nthan 1, you can add this option to use floor('tol'*N) as\\na minimum number of genomes instead of ceil('tol'*N)\\nwhich is the default behavior."
    verbose: "Increase verbosity in stdout/stderr."
    quiet: "Do not display anything to stdout/stderr. log files will\\nstill be created."
    genome_dot: "Optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_specify_output_directory = "${in_specify_output_directory}"
  }
}