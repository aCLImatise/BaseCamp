class: CommandLineTool
id: rsat_local_word_analysis.cwl
inputs:
- id: in_verbosity_set_verbosity
  doc: '#, --verbosity=#   set verbosity to level #'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in__input_read
  doc: "#, --input=#       read sequence from # (must be in FASTA format)\nif not\
    \ specified, the standard input is used"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in__output_results
  doc: "#, --output=#      output results to #\nif not specified, the standard output\
    \ is used"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_length_set_length
  doc: "#, --length=#      set oligomer length to # (REQUIRED ARGUMENT)\nwhen the\
    \ option dyad is used # represents the length of one monad\nEXAMPLE: --length=7"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_dyad
  doc: count dyads instead of oligomers
  type: boolean?
  inputBinding:
    prefix: --dyad
- id: in_spacing
  doc: ":B         when using dyads set the spacing between A to B\nEXAMPLE: --length=3\
    \ --dyad --spacing=1:20"
  type: long?
  inputBinding:
    prefix: --spacing
- id: in_under
  doc: use under-represented words statistics
  type: boolean?
  inputBinding:
    prefix: --under
- id: in__strand_search
  doc: "#, --strand=#      search in forward strand + or in both strands +- (default)\n\
    EXAMPLE: --strand=+"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_overlap
  doc: "allow overlapping oligomer occurrences\nEXAMPLE: --overlap"
  type: boolean?
  inputBinding:
    prefix: --overlap
- id: in_window
  doc: "=#            count oligomers in fixed window of length #\nuse --window=variable\
    \ to use a variable size window (slower)\nuse --window=none to search without\
    \ window\nEXAMPLE: --window=20 (window of length 20)"
  type: boolean?
  inputBinding:
    prefix: --window
- id: in_window_group
  doc: "=#       count oligomers in fixed window of length #, 2#, ...\nonly valid\
    \ when the --center option is used\nEXAMPLE: --center=0 --windowgroup=20 (use\
    \ a window of length 20, 40, 60, ...)"
  type: boolean?
  inputBinding:
    prefix: --windowgroup
- id: in_right
  doc: "=#             use right bound position as reference\nposition #. This should\
    \ be used when dealing with\nupstream sequences.\nEXAMPLE: --right=-1 (use right\
    \ bound of input\nsequence as position -1)"
  type: boolean?
  inputBinding:
    prefix: --right
- id: in_left
  doc: "=#              use left bound position as reference\nposition #. This should\
    \ be used when dealing with\ndownstream sequences.\nEXAMPLE: --left=0 (use left\
    \ bound of input\nsequences as position 0)"
  type: boolean?
  inputBinding:
    prefix: --left
- id: in_center
  doc: "=#            use center position as reference\nposition #.\nEXAMPLE: --center=0\
    \ (use center of input\nsequences as position 0)"
  type: boolean?
  inputBinding:
    prefix: --center
- id: in__markov_use
  doc: "#, --markov=#      use a Markov model of order # calibrated from\ninput sequences\n\
    order 0 corresponds to single nucleotide frequencies\nEXAMPLE: --markov=2 (Markov\
    \ chain of order 2)"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_bg_file
  doc: "=#            use a predefined local-word-analysis background model.\nEXAMPLE\
    \ --bgfile=mybgfile"
  type: boolean?
  inputBinding:
    prefix: --bgfile
- id: in_bg_oligo
  doc: "=#           use a predefined oligo-analysis background model\nEXAMPLE: --bgolio=myfile.gz"
  type: boolean?
  inputBinding:
    prefix: --bgoligo
- id: in_bg_oligo_markov
  doc: "=#     use a Markovian background model loaded from a\npredefined oligo-analysis\
    \ file\nEXAMPLE: --bgoligomarkov=myfile.gz"
  type: boolean?
  inputBinding:
    prefix: --bgoligomarkov
- id: in_bg_window
  doc: "=#          use a widow size of length # in background model\nEXAMPLE: --bgwindow=200\
    \ (use a background window of length 200)"
  type: boolean?
  inputBinding:
    prefix: --bgwindow
- id: in_max
  doc: "VALUE     limit output to items that have PARAM <= VALUE\nEXAMPLE: --max rank\
    \ 10\nSupported parameters: seq,identifier,obs_freq,exp_\nfreq,occ,exp_occ,occ_P,occ_E,occ_sig,start,end,wid\n\
    th,n_win,n_pos,w_rank,rank"
  type: long?
  inputBinding:
    prefix: --max
- id: in_min
  doc: "VALUE     limit output to items that have PARAM >= VALUE\nEXAMPLE: --min occ_sig\
    \ 0\nSupported parameters:seq,identifier,obs_freq,exp_f\nreq,occ,exp_occ,occ_P,occ_E,occ_sig,start,end,widt\n\
    h,n_win,n_pos,w_rank,rank"
  type: long?
  inputBinding:
    prefix: --min
- id: in_sort
  doc: "=[+][-]PARAM    sort ouput according to PARAM in growing\norder (+) or inverse\
    \ (-)\nEXAMPLE: --sort=+label\nSupported parameters:seq,identifier,obs_freq,exp_f\n\
    req,occ,exp_occ,occ_P,occ_E,occ_sig,start,end,width\nh,n_win,n_pos,w_rank,rank"
  type: boolean?
  inputBinding:
    prefix: --sort
- id: in_local_word_analysis
  doc: VERSION
  type: string
  inputBinding:
    position: 0
- id: in_author
  doc: AUTHOR
  type: long
  inputBinding:
    position: 1
- id: in_sequences
  doc: pattern discovery
  type: string
  inputBinding:
    position: 0
- id: in_p_value
  doc: "The probability to observe exactly k occurrences of a given oligomer\nis computed\
    \ using the binomial statistics\nunderrepresentation\nk           k       (N-k)\n\
    P(X<=k) = SUM C(k,N)  p   (1-p)\ni=0\noverreprensentation\nN            k    \
    \   (N-k)\nP(X>=k) = SUM  C(k,N)  p   (1-p)\ni=k"
  type: string
  inputBinding:
    position: 0
- id: in_e_value
  doc: E-VALUE = number_of_tests * P-VALUE
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- local-word-analysis
