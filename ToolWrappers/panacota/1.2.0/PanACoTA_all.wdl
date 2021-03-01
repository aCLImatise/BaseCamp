version 1.0

task PanACoTAAll {
  input {
    File? path_your_configuration
    Int? threads
    String? species_taxid_download
    String? species_download_corresponding
    String? assembly_level
    Int? cut_n
    Int? l_nine_zero
    Int? nb_cont
    Boolean? prodigal
    Int? choose_name_genomes
    Float? minimum_sequence_identity
    Int? to_l
    Boolean? mu
    Boolean? add_option_you_want_allow
    String? soft
    Boolean? verbose
    Boolean? quiet
    String? o
    String parameters_dot
  }
  command <<<
    PanACoTA all \
      ~{parameters_dot} \
      ~{if defined(path_your_configuration) then ("-c " +  '"' + path_your_configuration + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(species_taxid_download) then ("-t " +  '"' + species_taxid_download + '"') else ""} \
      ~{if defined(species_download_corresponding) then ("-s " +  '"' + species_download_corresponding + '"') else ""} \
      ~{if defined(assembly_level) then ("--assembly_level " +  '"' + assembly_level + '"') else ""} \
      ~{if defined(cut_n) then ("--cutn " +  '"' + cut_n + '"') else ""} \
      ~{if defined(l_nine_zero) then ("--l90 " +  '"' + l_nine_zero + '"') else ""} \
      ~{if defined(nb_cont) then ("--nbcont " +  '"' + nb_cont + '"') else ""} \
      ~{if (prodigal) then "--prodigal" else ""} \
      ~{if defined(choose_name_genomes) then ("-n " +  '"' + choose_name_genomes + '"') else ""} \
      ~{if defined(minimum_sequence_identity) then ("-i " +  '"' + minimum_sequence_identity + '"') else ""} \
      ~{if defined(to_l) then ("--tol " +  '"' + to_l + '"') else ""} \
      ~{if (mu) then "-Mu" else ""} \
      ~{if (add_option_you_want_allow) then "-X" else ""} \
      ~{if defined(soft) then ("--soft " +  '"' + soft + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/panacota:1.2.0--py_0"
  }
  parameter_meta {
    path_your_configuration: "Path to your configuration file, defining values of"
    threads: "Specify how many threads can be used (default=1)"
    species_taxid_download: "Species taxid to download, corresponding to the\\n'species taxid' provided by the NCBI. A comma-\\nseparated list of taxid can also be provided."
    species_download_corresponding: "Species to download, corresponding to the 'organism\\nname' provided by the NCBI. Give name between quotes\\n(for example \\\"escherichia coli\\\")"
    assembly_level: "Assembly levels of genomes to download (default: all).\\nPossible levels are: 'all', 'complete', 'chromosome',\\n'scaffold', 'contig'.You can also provide a comma-\\nseparated list of assembly levels. For ex:\\n'complete,chromosome'"
    cut_n: "By default, each genome will be cut into new contigs\\nwhen at least 5 'N' in a row are found in its\\nsequence. If you don't want to cut genomes into new\\ncontigs when there are rows of 'N', put 0 to this\\noption. If you want to cut from a different number of\\n'N' in a row, put this value to this option."
    l_nine_zero: "Maximum value of L90 allowed to keep a genome. Default\\nis 100."
    nb_cont: "Maximum number of contigs allowed to keep a genome.\\nDefault is 999."
    prodigal: "Add this option if you only want syntactical\\nannotation, given by prodigal, and not functional\\nannotation requiring prokka and is slower."
    choose_name_genomes: "Choose a name for your annotated genomes. This name\\nshould contain 4 alphanumeric characters. Generally,\\nthey correspond to the 2 first letters of genus, and 2\\nfirst letters of species, e.g. ESCO for Escherichia\\nColi."
    minimum_sequence_identity: "Minimum sequence identity to be considered in the same\\ncluster (float between 0 and 1). Default is 0.8."
    to_l: "min % of genomes having at least 1 member in a family\\nto consider the family as persistent (between 0 and 1,\\ndefault is 1 = 100% of genomes = Core genome).By\\ndefault, the minimum number of genomes will be\\nceil('tol'*N) (N being the total number of genomes).\\nIf you want to use floor('tol'*N) instead, add the\\n'-F' option."
    mu: "Add this option if you allow several members in any\\ngenome of a family. By default, only 1 (or 0 if tol<1)\\nmember per genome are allowed in all genomes. If you\\nwant to allow exactly 1 member in 'tol'% of the\\ngenomes, and 0, 1 or several members in the '1-tol'%\\nleft, use the option -X instead of this one: -M and -X\\noptions are not compatible."
    add_option_you_want_allow: "Add this option if you want to allow families having\\nseveral members only in '1-tol'% of the genomes. In\\nthe other genomes, only 1 member exactly is allowed.\\nThis option is not compatible with -M (which is\\nallowing multigenic families: having several members\\nin any number of genomes)."
    soft: "Choose with which software you want to infer the\\nphylogenetic tree. Default is IQtree."
    verbose: "Increase verbosity in stdout/stderr."
    quiet: "Do not display anything to stdout/stderr. log files\\nwill still be created."
    o: ""
    parameters_dot: "-o OUTDIR             Path to your output folder, where all results from all"
  }
  output {
    File out_stdout = stdout()
  }
}