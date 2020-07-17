version 1.0

task RgtTDFPromotertest {
  input {
    Boolean? input_file_name
    Boolean? rn
    Boolean? de
    Boolean? bed
    Boolean? bg
    Boolean? output_directory_name
    Boolean? define_title_name
    Boolean? organism
    Boolean? gtf
    Boolean? tss
    Boolean? pl
    Boolean? show_dbs
    Boolean? score
    Boolean? score_h
    Boolean? define_significance_level
    Boolean? ccf
    Boolean? rt
    Boolean? log
    Boolean? obed
    Boolean? show_pa
    Boolean? filter_havana
    Boolean? protein_coding
    Boolean? known_only
    Boolean? dump
    Boolean? rna_exp
    Boolean? no_file
    Boolean? define_minimum_length
    Boolean? set_maximal_errorrate
    Boolean? sets_tolerated_number
    Boolean? fr
    Boolean? fm
    Boolean? of
    Boolean? mf
    Boolean? rm
    Boolean? par
  }
  command <<<
    rgt-TDF promotertest \
      ~{true="-r" false="" input_file_name} \
      ~{true="-rn" false="" rn} \
      ~{true="-de" false="" de} \
      ~{true="-bed" false="" bed} \
      ~{true="-bg" false="" bg} \
      ~{true="-o" false="" output_directory_name} \
      ~{true="-t" false="" define_title_name} \
      ~{true="-organism" false="" organism} \
      ~{true="-gtf" false="" gtf} \
      ~{true="-tss" false="" tss} \
      ~{true="-pl" false="" pl} \
      ~{true="-showdbs" false="" show_dbs} \
      ~{true="-score" false="" score} \
      ~{true="-scoreh" false="" score_h} \
      ~{true="-a" false="" define_significance_level} \
      ~{true="-ccf" false="" ccf} \
      ~{true="-rt" false="" rt} \
      ~{true="-log" false="" log} \
      ~{true="-obed" false="" obed} \
      ~{true="-showpa" false="" show_pa} \
      ~{true="-filter_havana" false="" filter_havana} \
      ~{true="-protein_coding" false="" protein_coding} \
      ~{true="-known_only" false="" known_only} \
      ~{true="-dump" false="" dump} \
      ~{true="-rnaexp" false="" rna_exp} \
      ~{true="-nofile" false="" no_file} \
      ~{true="-l" false="" define_minimum_length} \
      ~{true="-e" false="" set_maximal_errorrate} \
      ~{true="-c" false="" sets_tolerated_number} \
      ~{true="-fr" false="" fr} \
      ~{true="-fm" false="" fm} \
      ~{true="-of" false="" of} \
      ~{true="-mf" false="" mf} \
      ~{true="-rm" false="" rm} \
      ~{true="-par" false="" par}
  >>>
  parameter_meta {
    input_file_name: "Input file name for RNA sequence (in fasta format)"
    rn: "Define the RNA name"
    de: "Input file for target gene list (gene symbols or Ensembl ID)"
    bed: "Input BED file of the promoter regions of target genes"
    bg: "Input BED file of the promoter regions of background genes"
    output_directory_name: "Output directory name for all the results"
    define_title_name: "Define the title name for the results under the Output name. (default is RNA name)"
    organism: "Define the organism"
    gtf: "Define the GTF file for annotation (optional)"
    tss: "Define the distance between the promoter regions and TSS along gene body (default: 0)"
    pl: "Define the promotor length (default: 1000)"
    show_dbs: "Show the plots and statistics of DBS (DNA Binding sites)"
    score: "Load score column from input gene list or BED file for analysis."
    score_h: "Use the header of scores from the given gene list or BED file."
    define_significance_level: "Define significance level for rejection null hypothesis (default: 0.05)"
    ccf: "Define the cut off of triplex-forming promoters per DBD in percentage of total triplexes (0-1) or an integer. (default: 0.1)"
    rt: "Remove temporary files (fa, txp...etc)"
    log: "Set the plots in log scale"
    obed: "Output the BED files for DNA binding sites."
    show_pa: "Show parallel and antiparallel bindings in the plot separately."
    filter_havana: "Apply filtering to remove HAVANA entries."
    protein_coding: "Apply filtering to get only protein coding genes."
    known_only: "Apply filtering to get only known genes."
    dump: "Only dump the preprocessed file and leave the program."
    rna_exp: "Given a file with RNA name and the expression value"
    no_file: "Don't save any files in the output folder, except the statistics."
    define_minimum_length: "[Triplexes] Define the minimum length of triplex (default: 20)"
    set_maximal_errorrate: "[Triplexes] Set the maximal error-rate in % tolerated (default: 20)"
    sets_tolerated_number: "[Triplexes] Sets the tolerated number of consecutive errors with respect to the canonical triplex rules as such were found to greatly destabilize triplexes in vitro (default: 2)"
    fr: "[Triplexes] Activates the filtering of low complexity regions and repeats in the sequence data (default: off)"
    fm: "[Triplexes] Method to quickly discard non-hits (default: 0).'0' = greedy approach; '1' = q-gram filtering."
    of: "[Triplexes] Define output formats of Triplexes (default: 1)"
    mf: "[Triplexes] Merge overlapping features into a cluster and report the spanning region."
    rm: "[Triplexes] Set the multiprocessing"
    par: "[Triplexes] Define other parameters for Triplexes"
  }
}