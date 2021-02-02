version 1.0

task RsatLocalwordanalysis {
  input {
    Boolean? _verbosity_set
    Boolean? _input_read
    Boolean? _output_output
    Boolean? _length_set
    Boolean? dyad
    Int? spacing
    Boolean? under
    Boolean? _strand_search
    Boolean? overlap
    Boolean? window
    Boolean? window_group
    Boolean? use_bound_position
    Boolean? use_left_position
    Boolean? center
    Boolean? _markov_use
    Boolean? bg_file
    Boolean? bg_oligo
    Boolean? bg_oligo_markov
    Boolean? bg_window
    Int? max
    Int? min
    Boolean? sort
    String local_word_analysis
    Int author
    String sequences
    String p_value
    String e_value
  }
  command <<<
    rsat local_word_analysis \
      ~{local_word_analysis} \
      ~{author} \
      ~{sequences} \
      ~{p_value} \
      ~{e_value} \
      ~{if (_verbosity_set) then "-v" else ""} \
      ~{if (_input_read) then "-i" else ""} \
      ~{if (_output_output) then "-o" else ""} \
      ~{if (_length_set) then "-l" else ""} \
      ~{if (dyad) then "--dyad" else ""} \
      ~{if defined(spacing) then ("--spacing " +  '"' + spacing + '"') else ""} \
      ~{if (under) then "--under" else ""} \
      ~{if (_strand_search) then "-s" else ""} \
      ~{if (overlap) then "--overlap" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (window_group) then "--windowgroup" else ""} \
      ~{if (use_bound_position) then "--right" else ""} \
      ~{if (use_left_position) then "--left" else ""} \
      ~{if (center) then "--center" else ""} \
      ~{if (_markov_use) then "-m" else ""} \
      ~{if (bg_file) then "--bgfile" else ""} \
      ~{if (bg_oligo) then "--bgoligo" else ""} \
      ~{if (bg_oligo_markov) then "--bgoligomarkov" else ""} \
      ~{if (bg_window) then "--bgwindow" else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if (sort) then "--sort" else ""}
  >>>
  parameter_meta {
    _verbosity_set: "#, --verbosity=#   set verbosity to level #"
    _input_read: "#, --input=#       read sequence from # (must be in FASTA format)\\nif not specified, the standard input is used"
    _output_output: "#, --output=#      output results to #\\nif not specified, the standard output is used"
    _length_set: "#, --length=#      set oligomer length to # (REQUIRED ARGUMENT)\\nwhen the option dyad is used # represents the length of one monad\\nEXAMPLE: --length=7"
    dyad: "count dyads instead of oligomers"
    spacing: ":B         when using dyads set the spacing between A to B\\nEXAMPLE: --length=3 --dyad --spacing=1:20"
    under: "use under-represented words statistics"
    _strand_search: "#, --strand=#      search in forward strand + or in both strands +- (default)\\nEXAMPLE: --strand=+"
    overlap: "allow overlapping oligomer occurrences\\nEXAMPLE: --overlap"
    window: "=#            count oligomers in fixed window of length #\\nuse --window=variable to use a variable size window (slower)\\nuse --window=none to search without window\\nEXAMPLE: --window=20 (window of length 20)"
    window_group: "=#       count oligomers in fixed window of length #, 2#, ...\\nonly valid when the --center option is used\\nEXAMPLE: --center=0 --windowgroup=20 (use a window of length 20, 40, 60, ...)"
    use_bound_position: "=#             use right bound position as reference\\nposition #. This should be used when dealing with\\nupstream sequences.\\nEXAMPLE: --right=-1 (use right bound of input\\nsequence as position -1)"
    use_left_position: "=#              use left bound position as reference\\nposition #. This should be used when dealing with\\ndownstream sequences.\\nEXAMPLE: --left=0 (use left bound of input\\nsequences as position 0)"
    center: "=#            use center position as reference\\nposition #.\\nEXAMPLE: --center=0 (use center of input\\nsequences as position 0)"
    _markov_use: "#, --markov=#      use a Markov model of order # calibrated from\\ninput sequences\\norder 0 corresponds to single nucleotide frequencies\\nEXAMPLE: --markov=2 (Markov chain of order 2)"
    bg_file: "=#            use a predefined local-word-analysis background model.\\nEXAMPLE --bgfile=mybgfile"
    bg_oligo: "=#           use a predefined oligo-analysis background model\\nEXAMPLE: --bgolio=myfile.gz"
    bg_oligo_markov: "=#     use a Markovian background model loaded from a\\npredefined oligo-analysis file\\nEXAMPLE: --bgoligomarkov=myfile.gz"
    bg_window: "=#          use a widow size of length # in background model\\nEXAMPLE: --bgwindow=200 (use a background window of length 200)"
    max: "VALUE     limit output to items that have PARAM <= VALUE\\nEXAMPLE: --max rank 10\\nSupported parameters: seq,identifier,obs_freq,exp_\\nfreq,occ,exp_occ,occ_P,occ_E,occ_sig,start,end,wid\\nth,n_win,n_pos,w_rank,rank"
    min: "VALUE     limit output to items that have PARAM >= VALUE\\nEXAMPLE: --min occ_sig 0\\nSupported parameters:seq,identifier,obs_freq,exp_f\\nreq,occ,exp_occ,occ_P,occ_E,occ_sig,start,end,widt\\nh,n_win,n_pos,w_rank,rank"
    sort: "=[+][-]PARAM    sort ouput according to PARAM in growing\\norder (+) or inverse (-)\\nEXAMPLE: --sort=+label\\nSupported parameters:seq,identifier,obs_freq,exp_f\\nreq,occ,exp_occ,occ_P,occ_E,occ_sig,start,end,width\\nh,n_win,n_pos,w_rank,rank"
    local_word_analysis: "VERSION"
    author: "AUTHOR"
    sequences: "pattern discovery"
    p_value: "The probability to observe exactly k occurrences of a given oligomer\\nis computed using the binomial statistics\\nunderrepresentation\\nk           k       (N-k)\\nP(X<=k) = SUM C(k,N)  p   (1-p)\\ni=0\\noverreprensentation\\nN            k       (N-k)\\nP(X>=k) = SUM  C(k,N)  p   (1-p)\\ni=k"
    e_value: "E-VALUE = number_of_tests * P-VALUE"
  }
  output {
    File out_stdout = stdout()
  }
}