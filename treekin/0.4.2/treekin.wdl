version 1.0

task Treekin {
  input {
    String? absorb
    String? method
    String? num_err
    String? t_zero
    String? t_eight
    String? temp
    Int? n_states
    String? pzero
    String? tinc
    Boolean? degeneracy
    Boolean? exponent
    Boolean? dump_u
    Boolean? mathematica_matrix
    Boolean? bin
    String? bar
    String? fpt
    Boolean? recover_e
    Boolean? dump_e
    Boolean? dump_x
    Boolean? info
    Boolean? verbose
    Boolean? quiet
    String? fpt_file
    String? visualize
    Boolean? just_shorten
    Int? max_decrease
    String? feps
    Boolean? use_plus_i
    String? minimal_rate
    String? hard_rescale
    String? equi_l_file
    String? times
    Boolean? warnings
  }
  command <<<
    treekin \
      ~{if defined(absorb) then ("--absorb " +  '"' + absorb + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(num_err) then ("--num-err " +  '"' + num_err + '"') else ""} \
      ~{if defined(t_zero) then ("--t0 " +  '"' + t_zero + '"') else ""} \
      ~{if defined(t_eight) then ("--t8 " +  '"' + t_eight + '"') else ""} \
      ~{if defined(temp) then ("--Temp " +  '"' + temp + '"') else ""} \
      ~{if defined(n_states) then ("--nstates " +  '"' + n_states + '"') else ""} \
      ~{if defined(pzero) then ("--p0 " +  '"' + pzero + '"') else ""} \
      ~{if defined(tinc) then ("--tinc " +  '"' + tinc + '"') else ""} \
      ~{true="--degeneracy" false="" degeneracy} \
      ~{true="--exponent" false="" exponent} \
      ~{true="--dumpU" false="" dump_u} \
      ~{true="--mathematicamatrix" false="" mathematica_matrix} \
      ~{true="--bin" false="" bin} \
      ~{if defined(bar) then ("--bar " +  '"' + bar + '"') else ""} \
      ~{if defined(fpt) then ("--fpt " +  '"' + fpt + '"') else ""} \
      ~{true="--recoverE" false="" recover_e} \
      ~{true="--dumpE" false="" dump_e} \
      ~{true="--dumpX" false="" dump_x} \
      ~{true="--info" false="" info} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(fpt_file) then ("--fptfile " +  '"' + fpt_file + '"') else ""} \
      ~{if defined(visualize) then ("--visualize " +  '"' + visualize + '"') else ""} \
      ~{true="--just-shorten" false="" just_shorten} \
      ~{if defined(max_decrease) then ("--max-decrease " +  '"' + max_decrease + '"') else ""} \
      ~{if defined(feps) then ("--feps " +  '"' + feps + '"') else ""} \
      ~{true="--useplusI" false="" use_plus_i} \
      ~{if defined(minimal_rate) then ("--minimal-rate " +  '"' + minimal_rate + '"') else ""} \
      ~{if defined(hard_rescale) then ("--hard-rescale " +  '"' + hard_rescale + '"') else ""} \
      ~{if defined(equi_l_file) then ("--equil-file " +  '"' + equi_l_file + '"') else ""} \
      ~{if defined(times) then ("--times " +  '"' + times + '"') else ""} \
      ~{true="--warnings" false="" warnings}
  >>>
  parameter_meta {
    absorb: "Make a state absorbing"
    method: "Select method to build transition matrix: A ==> Arrhenius-like kinetics I ==> use input as a rate matrix  (possible values=\"A\", \"I\" default=`I')"
    num_err: "Specify how to treat issues with numerical errors in probability: I ==> Ignore H ==> Halt the program R ==> Rescale the probability  (possible values=\"I\", \"H\", \"R\" default=`H')"
    t_zero: "Start time  (default=`0.1')"
    t_eight: "Stop time  (default=`1E12')"
    temp: "Temperature in Celsius  (default=`37.0')"
    n_states: "Read only first <int> states (assume quasi-stationary distribution (derivation of others is = 0))"
    pzero: "Set initial population of state <int> to <double> Can be given multiple times (NOTE: sum of <double> must equal 1) (example: \"--p0 2=1.0\" - state 2 has initial population 100 percent)"
    tinc: "Time scaling factor (for log time-scale) (default=`1.02')"
    degeneracy: "Consider degeneracy in transition rates (default=off)"
    exponent: "Use matrix-expontent routines, rather than diagonalization  (default=off)"
    dump_u: "Dump transition matrix U to file mx.txt (and to binary mx.bin - not fixed yet)  (default=off)"
    mathematica_matrix: "Dump transition matrix U to Mathematica-readable file mxMat.txt  (default=off)"
    bin: "Assume binary rates input  (default=off)"
    bar: "Input barriers file. Required in case \"-m I\" (rates kinetics) AND \"-a\" (absorbing state) is given"
    fpt: "Compute first passage times (FPT). Arguments: all => compute all FPT (slow) <num> - compute FPT to state <num> from all states"
    recover_e: "Recover from pre-ccomputes eigenvalues and eigenvectors  (default=off)"
    dump_e: "Dump eigenvalues and eigenvectors to a binary recovery file and continue with iteration (default=off)"
    dump_x: "Dump eigenvalues to ASCII file and exit (do not iterate)  (default=off)"
    info: "Show settings  (default=off)"
    verbose: "Verbose output  (default=off)"
    quiet: "Be silent (do not print out the output) (default=off)"
    fpt_file: "Filename of FPT file (provided -t option given)"
    visualize: "Filename where to print a visualization of rate graph (without file subscript, two files will be generated: .dot and .eps with text and visual representation of graph)"
    just_shorten: "Do not diagonalize and iterate, just shorten input (meaningfull only with -n X option or -fpt option or --visualize option)  (default=off)"
    max_decrease: "Maximal decrease in dimension in one step (default=`1000000')"
    feps: "Machine precision used by LAPACK routines (and matrix aritmetic) -- if set to negative number, the lapack suggested value is used (2*DLAMCH(\"S\") )  (default=`1E-15')"
    use_plus_i: "Use old treekin computation where we add identity matrix to transition matrix. Sometimes less precise (maybe sometimes also more precise), in normal case it should not affect results at all. (default=off)"
    minimal_rate: "Rescale all rates to be higher than the minimal rate using formula  \"rate -> rate^(ln(desired_minimal_rate)/ln(minimal_rate))\", where desired_minimal_rate is from input, minimal_rate is the lowest from all rates in rate matrix."
    hard_rescale: "Rescale all rates by a hard exponent (usually 0.0<HR<1.0). Formula: \"rate -> rate^(hard-rescale)\". Overrides --minimal-rate argument."
    equi_l_file: "Write equilibrium distribution into a file."
    times: "Multiply rates with a constant number."
    warnings: "Turn all the warnings about underflow on. (default=off)"
  }
}