class: CommandLineTool
id: treekin.cwl
inputs:
- id: absorb
  doc: Make a state absorbing
  type: string
  inputBinding:
    prefix: --absorb
- id: method
  doc: "Select method to build transition matrix: A ==> Arrhenius-like kinetics I\
    \ ==> use input as a rate matrix  (possible values=\"A\", \"I\" default=`I')"
  type: string
  inputBinding:
    prefix: --method
- id: num_err
  doc: "Specify how to treat issues with numerical errors in probability: I ==> Ignore\
    \ H ==> Halt the program R ==> Rescale the probability  (possible values=\"I\"\
    , \"H\", \"R\" default=`H')"
  type: string
  inputBinding:
    prefix: --num-err
- id: t0
  doc: Start time  (default=`0.1')
  type: string
  inputBinding:
    prefix: --t0
- id: t8
  doc: Stop time  (default=`1E12')
  type: string
  inputBinding:
    prefix: --t8
- id: temp
  doc: Temperature in Celsius  (default=`37.0')
  type: string
  inputBinding:
    prefix: --Temp
- id: n_states
  doc: Read only first <int> states (assume quasi-stationary distribution (derivation
    of others is = 0))
  type: long
  inputBinding:
    prefix: --nstates
- id: p0
  doc: 'Set initial population of state <int> to <double> Can be given multiple times
    (NOTE: sum of <double> must equal 1) (example: "--p0 2=1.0" - state 2 has initial
    population 100 percent)'
  type: string
  inputBinding:
    prefix: --p0
- id: tinc
  doc: Time scaling factor (for log time-scale) (default=`1.02')
  type: string
  inputBinding:
    prefix: --tinc
- id: degeneracy
  doc: Consider degeneracy in transition rates (default=off)
  type: boolean
  inputBinding:
    prefix: --degeneracy
- id: exponent
  doc: Use matrix-expontent routines, rather than diagonalization  (default=off)
  type: boolean
  inputBinding:
    prefix: --exponent
- id: dump_u
  doc: Dump transition matrix U to file mx.txt (and to binary mx.bin - not fixed yet)  (default=off)
  type: boolean
  inputBinding:
    prefix: --dumpU
- id: mathematica_matrix
  doc: Dump transition matrix U to Mathematica-readable file mxMat.txt  (default=off)
  type: boolean
  inputBinding:
    prefix: --mathematicamatrix
- id: bin
  doc: Assume binary rates input  (default=off)
  type: boolean
  inputBinding:
    prefix: --bin
- id: bar
  doc: Input barriers file. Required in case "-m I" (rates kinetics) AND "-a" (absorbing
    state) is given
  type: string
  inputBinding:
    prefix: --bar
- id: fpt
  doc: 'Compute first passage times (FPT). Arguments: all => compute all FPT (slow)
    <num> - compute FPT to state <num> from all states'
  type: string
  inputBinding:
    prefix: --fpt
- id: recover_e
  doc: Recover from pre-ccomputes eigenvalues and eigenvectors  (default=off)
  type: boolean
  inputBinding:
    prefix: --recoverE
- id: dump_e
  doc: Dump eigenvalues and eigenvectors to a binary recovery file and continue with
    iteration (default=off)
  type: boolean
  inputBinding:
    prefix: --dumpE
- id: dump_x
  doc: Dump eigenvalues to ASCII file and exit (do not iterate)  (default=off)
  type: boolean
  inputBinding:
    prefix: --dumpX
- id: info
  doc: Show settings  (default=off)
  type: boolean
  inputBinding:
    prefix: --info
- id: verbose
  doc: Verbose output  (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Be silent (do not print out the output) (default=off)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: fpt_file
  doc: Filename of FPT file (provided -t option given)
  type: string
  inputBinding:
    prefix: --fptfile
- id: visualize
  doc: 'Filename where to print a visualization of rate graph (without file subscript,
    two files will be generated: .dot and .eps with text and visual representation
    of graph)'
  type: string
  inputBinding:
    prefix: --visualize
- id: just_shorten
  doc: Do not diagonalize and iterate, just shorten input (meaningfull only with -n
    X option or -fpt option or --visualize option)  (default=off)
  type: boolean
  inputBinding:
    prefix: --just-shorten
- id: max_decrease
  doc: Maximal decrease in dimension in one step (default=`1000000')
  type: long
  inputBinding:
    prefix: --max-decrease
- id: feps
  doc: Machine precision used by LAPACK routines (and matrix aritmetic) -- if set
    to negative number, the lapack suggested value is used (2*DLAMCH("S") )  (default=`1E-15')
  type: string
  inputBinding:
    prefix: --feps
- id: use_plus_i
  doc: Use old treekin computation where we add identity matrix to transition matrix.
    Sometimes less precise (maybe sometimes also more precise), in normal case it
    should not affect results at all. (default=off)
  type: boolean
  inputBinding:
    prefix: --useplusI
- id: minimal_rate
  doc: Rescale all rates to be higher than the minimal rate using formula  "rate ->
    rate^(ln(desired_minimal_rate)/ln(minimal_rate))", where desired_minimal_rate
    is from input, minimal_rate is the lowest from all rates in rate matrix.
  type: string
  inputBinding:
    prefix: --minimal-rate
- id: hard_rescale
  doc: 'Rescale all rates by a hard exponent (usually 0.0<HR<1.0). Formula: "rate
    -> rate^(hard-rescale)". Overrides --minimal-rate argument.'
  type: string
  inputBinding:
    prefix: --hard-rescale
- id: equi_l_file
  doc: Write equilibrium distribution into a file.
  type: string
  inputBinding:
    prefix: --equil-file
- id: times
  doc: Multiply rates with a constant number.
  type: string
  inputBinding:
    prefix: --times
- id: warnings
  doc: Turn all the warnings about underflow on. (default=off)
  type: boolean
  inputBinding:
    prefix: --warnings
outputs: []
cwlVersion: v1.1
baseCommand:
- treekin
