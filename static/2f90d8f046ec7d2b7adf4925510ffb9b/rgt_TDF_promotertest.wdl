version 1.0

task RgtTDFPromotertest {
  input {
    Boolean? input_file_name
    Boolean? rn
    Boolean? de
    Boolean? bed
    Boolean? bg
    Boolean? define_title_name
    Boolean? organism
    Boolean? gtf
    Boolean? tss
    Boolean? pl
    Boolean? show_dbs
    Boolean? score
    Boolean? ccf
    Boolean? rt
    Boolean? log
    Boolean? obed
    Boolean? show_pa
    Boolean? protein_coding
    Boolean? known_only
    Boolean? dump
    Boolean? rna_exp
    Directory? no_file
    Boolean? set_maximal_errorrate
    Boolean? sets_tolerated_number
    Boolean? fr
    Boolean? fm
    Boolean? of
    Boolean? mf
    Boolean? rm
    Boolean? par
    String genes
    String analysis_dot
    File file_dot
    String separately_dot
    String statistics_dot
  }
  command <<<
    rgt_TDF promotertest \
      ~{genes} \
      ~{analysis_dot} \
      ~{file_dot} \
      ~{separately_dot} \
      ~{statistics_dot} \
      ~{if (input_file_name) then "-r" else ""} \
      ~{if (rn) then "-rn" else ""} \
      ~{if (de) then "-de" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (bg) then "-bg" else ""} \
      ~{if (define_title_name) then "-t" else ""} \
      ~{if (organism) then "-organism" else ""} \
      ~{if (gtf) then "-gtf" else ""} \
      ~{if (tss) then "-tss" else ""} \
      ~{if (pl) then "-pl" else ""} \
      ~{if (show_dbs) then "-showdbs" else ""} \
      ~{if (score) then "-score" else ""} \
      ~{if (ccf) then "-ccf" else ""} \
      ~{if (rt) then "-rt" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (obed) then "-obed" else ""} \
      ~{if (show_pa) then "-showpa" else ""} \
      ~{if (protein_coding) then "-protein_coding" else ""} \
      ~{if (known_only) then "-known_only" else ""} \
      ~{if (dump) then "-dump" else ""} \
      ~{if (rna_exp) then "-rnaexp" else ""} \
      ~{if (no_file) then "-nofile" else ""} \
      ~{if (set_maximal_errorrate) then "-e" else ""} \
      ~{if (sets_tolerated_number) then "-c" else ""} \
      ~{if (fr) then "-fr" else ""} \
      ~{if (fm) then "-fm" else ""} \
      ~{if (of) then "-of" else ""} \
      ~{if (mf) then "-mf" else ""} \
      ~{if (rm) then "-rm" else ""} \
      ~{if (par) then "-par" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_name: "Input file name for RNA sequence (in fasta format)"
    rn: "Define the RNA name"
    de: "Input file for target gene list (gene symbols or Ensembl\\nID)"
    bed: "Input BED file of the promoter regions of target genes"
    bg: "Input BED file of the promoter regions of background"
    define_title_name: "Define the title name for the results under the Output\\nname. (default is RNA name)"
    organism: "Define the organism"
    gtf: "Define the GTF file for annotation (optional)"
    tss: "Define the distance between the promoter regions and TSS\\nalong gene body (default: 0)"
    pl: "Define the promotor length (default: 1000)"
    show_dbs: "Show the plots and statistics of DBS (DNA Binding sites)"
    score: "Load score column from input gene list or BED file for"
    ccf: "Define the cut off of triplex-forming promoters per DBD\\nin percentage of total triplexes (0-1) or an integer.\\n(default: 0.1)"
    rt: "Remove temporary files (fa, txp...etc)"
    log: "Set the plots in log scale"
    obed: "Output the BED files for DNA binding sites."
    show_pa: "Show parallel and antiparallel bindings in the plot"
    protein_coding: "Apply filtering to get only protein coding genes."
    known_only: "Apply filtering to get only known genes."
    dump: "Only dump the preprocessed file and leave the program."
    rna_exp: "Given a file with RNA name and the expression value"
    no_file: "Don't save any files in the output folder, except the"
    set_maximal_errorrate: "[Triplexes] Set the maximal error-rate in % tolerated\\n(default: 20)"
    sets_tolerated_number: "[Triplexes] Sets the tolerated number of consecutive\\nerrors with respect to the canonical triplex rules as\\nsuch were found to greatly destabilize triplexes in\\nvitro (default: 2)"
    fr: "[Triplexes] Activates the filtering of low complexity\\nregions and repeats in the sequence data (default: off)"
    fm: "[Triplexes] Method to quickly discard non-hits (default:\\n0).'0' = greedy approach; '1' = q-gram filtering."
    of: "[Triplexes] Define output formats of Triplexes (default:\\n1)"
    mf: "[Triplexes] Merge overlapping features into a cluster\\nand report the spanning region."
    rm: "[Triplexes] Set the multiprocessing"
    par: "[Triplexes] Define other parameters for Triplexes"
    genes: "-o                  Output directory name for all the results"
    analysis_dot: "-scoreh             Use the header of scores from the given gene list or BED"
    file_dot: "-a                  Define significance level for rejection null hypothesis"
    separately_dot: "-filter_havana      Apply filtering to remove HAVANA entries."
    statistics_dot: "-l                  [Triplexes] Define the minimum length of triplex"
  }
  output {
    File out_stdout = stdout()
    Directory out_no_file = "${in_no_file}"
  }
}