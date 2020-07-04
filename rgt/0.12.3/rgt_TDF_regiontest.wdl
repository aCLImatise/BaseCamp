version 1.0

task RgtTDFRegiontest {
  input {
    Boolean? input_file_name
    Boolean? rl
    Boolean? rn
    Boolean? bed
    Boolean? output_directory_name
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
    Boolean? mp
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
    rgt-TDF regiontest \
      ~{true="-r" false="" input_file_name} \
      ~{true="-rl" false="" rl} \
      ~{true="-rn" false="" rn} \
      ~{true="-bed" false="" bed} \
      ~{true="-o" false="" output_directory_name} \
      ~{true="-t" false="" define_title_name} \
      ~{true="-n" false="" number_times_randomization} \
      ~{true="-organism" false="" organism} \
      ~{true="-showdbs" false="" show_dbs} \
      ~{true="-score" false="" score} \
      ~{true="-a" false="" define_significance_level} \
      ~{true="-ccf" false="" ccf} \
      ~{true="-rt" false="" rt} \
      ~{true="-log" false="" log} \
      ~{true="-f" false="" input_bed_file_mask} \
      ~{true="-obed" false="" obed} \
      ~{true="-showpa" false="" show_pa} \
      ~{true="-mp" false="" mp} \
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
    rl: "Input list for paths to all RNA sequences (in fasta format)"
    rn: "Define the RNA name"
    bed: "Input BED file for interested regions on DNA"
    output_directory_name: "Output directory name for all the results and temporary files"
    define_title_name: "Define the title name for the results under the Output name. (default is RNA name)"
    number_times_randomization: "Number of times for randomization (default: 10000)"
    organism: "Define the organism"
    show_dbs: "Show the plots and statistics of DBS (DNA Binding sites)"
    score: "Load score column from input BED file"
    define_significance_level: "Define significance level for rejection null hypothesis (default: 0.05)"
    ccf: "Define the cut off of triplex-forming regions per DBD in percentage of total triplexes (0-1) or an integer. (default: 0.1)"
    rt: "Remove temporary files (fa, txp...etc)"
    log: "Set the plots in log scale"
    input_bed_file_mask: "Input BED file as mask in randomization"
    obed: "Output the BED files for DNA binding sites."
    show_pa: "Show parallel and antiparallel bindings in the plot separately."
    mp: "Define the number of threads for multiprocessing"
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