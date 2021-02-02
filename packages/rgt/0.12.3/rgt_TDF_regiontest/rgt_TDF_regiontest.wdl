version 1.0

task RgtTDFRegiontest {
  input {
    Boolean? input_file_name
    Boolean? rl
    Boolean? rn
    Boolean? bed
    Directory? output_directory_name
    Boolean? define_title_name
    Boolean? number_times_randomization
    Boolean? organism
    Boolean? show_dbs
    Boolean? score
    Boolean? define_significance_level
    Boolean? ccf
    Boolean? rt
    Boolean? log
    Boolean? input_bed_file_mask
    Boolean? obed
    Boolean? show_pa
    Directory? no_file
    Boolean? set_maximal_errorrate
    Boolean? sets_tolerated_number
    Boolean? fr
    Boolean? fm
    Boolean? of
    Boolean? mf
    Boolean? rm
    Boolean? par
    String separately_dot
    String statistics_dot
  }
  command <<<
    rgt_TDF regiontest \
      ~{separately_dot} \
      ~{statistics_dot} \
      ~{if (input_file_name) then "-r" else ""} \
      ~{if (rl) then "-rl" else ""} \
      ~{if (rn) then "-rn" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (output_directory_name) then "-o" else ""} \
      ~{if (define_title_name) then "-t" else ""} \
      ~{if (number_times_randomization) then "-n" else ""} \
      ~{if (organism) then "-organism" else ""} \
      ~{if (show_dbs) then "-showdbs" else ""} \
      ~{if (score) then "-score" else ""} \
      ~{if (define_significance_level) then "-a" else ""} \
      ~{if (ccf) then "-ccf" else ""} \
      ~{if (rt) then "-rt" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (input_bed_file_mask) then "-f" else ""} \
      ~{if (obed) then "-obed" else ""} \
      ~{if (show_pa) then "-showpa" else ""} \
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
  parameter_meta {
    input_file_name: "Input file name for RNA sequence (in fasta format)"
    rl: "Input list for paths to all RNA sequences (in fasta format)"
    rn: "Define the RNA name"
    bed: "Input BED file for interested regions on DNA"
    output_directory_name: "Output directory name for all the results and temporary files"
    define_title_name: "Define the title name for the results under the Output name.\\n(default is RNA name)"
    number_times_randomization: "Number of times for randomization (default: 10000)"
    organism: "Define the organism"
    show_dbs: "Show the plots and statistics of DBS (DNA Binding sites)"
    score: "Load score column from input BED file"
    define_significance_level: "Define significance level for rejection null hypothesis\\n(default: 0.05)"
    ccf: "Define the cut off of triplex-forming regions per DBD in\\npercentage of total triplexes (0-1) or an integer. (default:\\n0.1)"
    rt: "Remove temporary files (fa, txp...etc)"
    log: "Set the plots in log scale"
    input_bed_file_mask: "Input BED file as mask in randomization"
    obed: "Output the BED files for DNA binding sites."
    show_pa: "Show parallel and antiparallel bindings in the plot"
    no_file: "Don't save any files in the output folder, except the"
    set_maximal_errorrate: "[Triplexes] Set the maximal error-rate in % tolerated\\n(default: 20)"
    sets_tolerated_number: "[Triplexes] Sets the tolerated number of consecutive errors\\nwith respect to the canonical triplex rules as such were found\\nto greatly destabilize triplexes in vitro (default: 2)"
    fr: "[Triplexes] Activates the filtering of low complexity regions\\nand repeats in the sequence data (default: off)"
    fm: "[Triplexes] Method to quickly discard non-hits (default:\\n0).'0' = greedy approach; '1' = q-gram filtering."
    of: "[Triplexes] Define output formats of Triplexes (default: 1)"
    mf: "[Triplexes] Merge overlapping features into a cluster and\\nreport the spanning region."
    rm: "[Triplexes] Set the multiprocessing"
    par: "[Triplexes] Define other parameters for Triplexes"
    separately_dot: "-mp           Define the number of threads for multiprocessing"
    statistics_dot: "-l            [Triplexes] Define the minimum length of triplex (default: 20)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_name = "${in_output_directory_name}"
    Directory out_no_file = "${in_no_file}"
  }
}