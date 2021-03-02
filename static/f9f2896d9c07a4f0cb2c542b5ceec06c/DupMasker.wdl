version 1.0

task DupMasker {
  input {
    Boolean? version
    String? engine
    String? max_div
    Int? maxwidth
    Boolean? force_search
    File? align
    File? gff
    File? crossmatch_dir
    String? default_search_engine
    File? rmb_last_dir
    File? libdir
    File? abb_last_dir
    File? hmmer_dir
    File? trf_prgm
    String one_dot
    String my_filed_otf_a_dot_dupl_icons_dot
    String repeatmasker
  }
  command <<<
    DupMasker \
      ~{one_dot} \
      ~{my_filed_otf_a_dot_dupl_icons_dot} \
      ~{repeatmasker} \
      ~{if (version) then "-version" else ""} \
      ~{if defined(engine) then ("-engine " +  '"' + engine + '"') else ""} \
      ~{if defined(max_div) then ("-maxDiv " +  '"' + max_div + '"') else ""} \
      ~{if defined(maxwidth) then ("-maxWidth " +  '"' + maxwidth + '"') else ""} \
      ~{if (force_search) then "-forceSearch" else ""} \
      ~{if (align) then "-align" else ""} \
      ~{if (gff) then "-gff" else ""} \
      ~{if defined(crossmatch_dir) then ("-crossmatch_dir " +  '"' + crossmatch_dir + '"') else ""} \
      ~{if defined(default_search_engine) then ("-default_search_engine " +  '"' + default_search_engine + '"') else ""} \
      ~{if defined(rmb_last_dir) then ("-rmblast_dir " +  '"' + rmb_last_dir + '"') else ""} \
      ~{if defined(libdir) then ("-libdir " +  '"' + libdir + '"') else ""} \
      ~{if defined(abb_last_dir) then ("-abblast_dir " +  '"' + abb_last_dir + '"') else ""} \
      ~{if defined(hmmer_dir) then ("-hmmer_dir " +  '"' + hmmer_dir + '"') else ""} \
      ~{if defined(trf_prgm) then ("-trf_prgm " +  '"' + trf_prgm + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/repeatmasker:4.1.1--pl526_1"
  }
  parameter_meta {
    version: "Displays the version of the program"
    engine: "The name of the search engine we are using. I.e abblast/wublast or\\nncbi (rmblast version). If not specified it will attempt to use the\\ndefault configured for RepeatMasker."
    max_div: "Filter out duplicon seeds which have a divergence greater than this\\nvalue."
    maxwidth: "The maximum non-repetitive/non-seed realign gaps, default is 300bp"
    force_search: "DupMasker uses RepeatMasker .out and previous runs of DupMasker's\\n*.dupout files by default. Use this option if you would like to\\nrerun these searches."
    align: "Produce alignments. These are stored in the output file."
    gff: "Creates an additional Gene Feature Finding (gff) output file."
    crossmatch_dir: "The path Phil Green's cross_match program ( phrap program suite )."
    default_search_engine: "The default search engine to use"
    rmb_last_dir: "The path to the installation of the RMBLAST sequence alignment\\nprogram."
    libdir: "Path to the RepeatMasker libraries directory."
    abb_last_dir: "The path to the installation of the ABBLAST sequence alignment\\nprogram."
    hmmer_dir: "The path to the HMMER profile HMM search software."
    trf_prgm: "The full path including the name for the TRF program."
    one_dot: "The output is placed in a file named "
    my_filed_otf_a_dot_dupl_icons_dot: "The basic program flow is:\\n- RepeatMask the sequence ( Human libraries )\\n- Search the masked squence against the duplicon library\\n- Build realignment regions for each duplicon\\n- Realign using non-repeat-masked dna\\n- Join duplicons and output results"
    repeatmasker: "COPYRIGHT"
  }
  output {
    File out_stdout = stdout()
    File out_align = "${in_align}"
    File out_gff = "${in_gff}"
  }
}