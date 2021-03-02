class: CommandLineTool
id: treekin.cwl
inputs:
- id: in_absorb
  doc: Make a state absorbing
  type: string?
  inputBinding:
    prefix: --absorb
- id: in_method
  doc: "Select method to build transition matrix:\nA ==> Arrhenius-like kinetics\n\
    I ==> use input as a rate matrix  (possible\nvalues=\"A\", \"I\" default=`I')"
  type: string?
  inputBinding:
    prefix: --method
- id: in_num_err
  doc: "Specify how to treat issues with numerical errors\nin probability:\nI ==>\
    \ Ignore\nH ==> Halt the program\nR ==> Rescale the probability  (possible\nvalues=\"\
    I\", \"H\", \"R\" default=`H')"
  type: long?
  inputBinding:
    prefix: --num-err
- id: in_t_zero
  doc: Start time  (default=`0.1')
  type: long?
  inputBinding:
    prefix: --t0
- id: in_t_eight
  doc: Stop time  (default=`1E12')
  type: long?
  inputBinding:
    prefix: --t8
- id: in_temp
  doc: Temperature in Celsius  (default=`37.0')
  type: double?
  inputBinding:
    prefix: --Temp
- id: in_n_states
  doc: "Read only first <int> states (assume\nquasi-stationary distribution (derivation\
    \ of\nothers is = 0))"
  type: long?
  inputBinding:
    prefix: --nstates
- id: in_pzero
  doc: "Set initial population of state <int> to <double>\nCan be given multiple times\n\
    (NOTE: sum of <double> must equal 1)\n(example: \"--p0 2=1.0\" - state 2 has initial\n\
    population 100 percent)"
  type: long?
  inputBinding:
    prefix: --p0
- id: in_tinc
  doc: "Time scaling factor (for log time-scale)\n(default=`1.02')"
  type: double?
  inputBinding:
    prefix: --tinc
- id: in_degeneracy
  doc: "Consider degeneracy in transition rates\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --degeneracy
- id: in_exponent
  doc: Use matrix-expontent routines, rather than
  type: boolean?
  inputBinding:
    prefix: --exponent
- id: in_dump_u
  doc: "Dump transition matrix U to file mx.txt (and to\nbinary mx.bin - not fixed\
    \ yet)  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --dumpU
- id: in_mathematica_matrix
  doc: "Dump transition matrix U to Mathematica-readable\nfile mxMat.txt  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --mathematicamatrix
- id: in_bin
  doc: Assume binary rates input  (default=off)
  type: boolean?
  inputBinding:
    prefix: --bin
- id: in_bar
  doc: "Input barriers file. Required in case \"-m I\"\n(rates kinetics) AND \"-a\"\
    \ (absorbing state) is\ngiven"
  type: File?
  inputBinding:
    prefix: --bar
- id: in_fpt
  doc: "Compute first passage times (FPT). Arguments:\nall => compute all FPT (slow)\n\
    <num> - compute FPT to state <num> from all\nstates"
  type: long?
  inputBinding:
    prefix: --fpt
- id: in_recover_e
  doc: Recover from pre-ccomputes eigenvalues and
  type: boolean?
  inputBinding:
    prefix: --recoverE
- id: in_dump_e
  doc: "Dump eigenvalues and eigenvectors to a binary\nrecovery file and continue\
    \ with iteration\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --dumpE
- id: in_dump_x
  doc: "Dump eigenvalues to ASCII file and exit (do not\niterate)  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --dumpX
- id: in_info
  doc: Show settings  (default=off)
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_verbose
  doc: Verbose output  (default=off)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Be silent (do not print out the output)\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_fpt_file
  doc: Filename of FPT file (provided -t option given)
  type: File?
  inputBinding:
    prefix: --fptfile
- id: in_visualize
  doc: "Filename where to print a visualization of rate\ngraph (without file subscript,\
    \ two files will be\ngenerated: .dot and .eps with text and visual\nrepresentation\
    \ of graph)"
  type: File?
  inputBinding:
    prefix: --visualize
- id: in_just_shorten
  doc: "Do not diagonalize and iterate, just shorten input\n(meaningfull only with\
    \ -n X option or -fpt\noption or --visualize option)  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --just-shorten
- id: in_max_decrease
  doc: "Maximal decrease in dimension in one step\n(default=`1000000')"
  type: long?
  inputBinding:
    prefix: --max-decrease
- id: in_feps
  doc: "Machine precision used by LAPACK routines (and\nmatrix aritmetic) -- if set\
    \ to negative number,\nthe lapack suggested value is used\n(2*DLAMCH(\"S\") )\
    \  (default=`1E-15')"
  type: long?
  inputBinding:
    prefix: --feps
- id: in_use_plus_i
  doc: "Use old treekin computation where we add identity\nmatrix to transition matrix.\
    \ Sometimes less\nprecise (maybe sometimes also more precise), in\nnormal case\
    \ it should not affect results at all.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --useplusI
- id: in_minimal_rate
  doc: "Rescale all rates to be higher than the minimal\nrate using formula  \"rate\
    \ ->\nrate^(ln(desired_minimal_rate)/ln(minimal_rate))\",\nwhere desired_minimal_rate\
    \ is from input,\nminimal_rate is the lowest from all rates in\nrate matrix."
  type: string?
  inputBinding:
    prefix: --minimal-rate
- id: in_hard_rescale
  doc: "Rescale all rates by a hard exponent (usually\n0.0<HR<1.0). Formula: \"rate\
    \ ->\nrate^(hard-rescale)\". Overrides --minimal-rate\nargument."
  type: double?
  inputBinding:
    prefix: --hard-rescale
- id: in_equi_l_file
  doc: Write equilibrium distribution into a file.
  type: File?
  inputBinding:
    prefix: --equil-file
- id: in_times
  doc: Multiply rates with a constant number.
  type: long?
  inputBinding:
    prefix: --times
- id: in_warnings
  doc: "Turn all the warnings about underflow on.\n(default=off)\n"
  type: boolean?
  inputBinding:
    prefix: --warnings
- id: in_diagonalization
  doc: (default=off)
  type: string
  inputBinding:
    position: 0
- id: in_eigenvectors
  doc: (default=off)
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
- treekin
