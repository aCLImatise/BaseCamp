version 1.0

task Treekin {
  input {
    String? absorb
    String? method
    Int? num_err
    Int? t_zero
    Int? t_eight
    Float? temp
    Int? n_states
    Int? pzero
    Float? tinc
    Boolean? degeneracy
    Boolean? exponent
    Boolean? dump_u
    Boolean? mathematica_matrix
    Boolean? bin
    File? bar
    Int? fpt
    Boolean? recover_e
    Boolean? dump_e
    Boolean? dump_x
    Boolean? info
    Boolean? verbose
    Boolean? quiet
    File? fpt_file
    File? visualize
    Boolean? just_shorten
    Int? max_decrease
    Int? feps
    Boolean? use_plus_i
    String? minimal_rate
    Float? hard_rescale
    File? equi_l_file
    Int? times
    Boolean? warnings
    String diagonalization
    String eigenvectors
  }
  command <<<
    treekin \
      ~{diagonalization} \
      ~{eigenvectors} \
      ~{if defined(absorb) then ("--absorb " +  '"' + absorb + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(num_err) then ("--num-err " +  '"' + num_err + '"') else ""} \
      ~{if defined(t_zero) then ("--t0 " +  '"' + t_zero + '"') else ""} \
      ~{if defined(t_eight) then ("--t8 " +  '"' + t_eight + '"') else ""} \
      ~{if defined(temp) then ("--Temp " +  '"' + temp + '"') else ""} \
      ~{if defined(n_states) then ("--nstates " +  '"' + n_states + '"') else ""} \
      ~{if defined(pzero) then ("--p0 " +  '"' + pzero + '"') else ""} \
      ~{if defined(tinc) then ("--tinc " +  '"' + tinc + '"') else ""} \
      ~{if (degeneracy) then "--degeneracy" else ""} \
      ~{if (exponent) then "--exponent" else ""} \
      ~{if (dump_u) then "--dumpU" else ""} \
      ~{if (mathematica_matrix) then "--mathematicamatrix" else ""} \
      ~{if (bin) then "--bin" else ""} \
      ~{if defined(bar) then ("--bar " +  '"' + bar + '"') else ""} \
      ~{if defined(fpt) then ("--fpt " +  '"' + fpt + '"') else ""} \
      ~{if (recover_e) then "--recoverE" else ""} \
      ~{if (dump_e) then "--dumpE" else ""} \
      ~{if (dump_x) then "--dumpX" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(fpt_file) then ("--fptfile " +  '"' + fpt_file + '"') else ""} \
      ~{if defined(visualize) then ("--visualize " +  '"' + visualize + '"') else ""} \
      ~{if (just_shorten) then "--just-shorten" else ""} \
      ~{if defined(max_decrease) then ("--max-decrease " +  '"' + max_decrease + '"') else ""} \
      ~{if defined(feps) then ("--feps " +  '"' + feps + '"') else ""} \
      ~{if (use_plus_i) then "--useplusI" else ""} \
      ~{if defined(minimal_rate) then ("--minimal-rate " +  '"' + minimal_rate + '"') else ""} \
      ~{if defined(hard_rescale) then ("--hard-rescale " +  '"' + hard_rescale + '"') else ""} \
      ~{if defined(equi_l_file) then ("--equil-file " +  '"' + equi_l_file + '"') else ""} \
      ~{if defined(times) then ("--times " +  '"' + times + '"') else ""} \
      ~{if (warnings) then "--warnings" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    absorb: "Make a state absorbing"
    method: "Select method to build transition matrix:\\nA ==> Arrhenius-like kinetics\\nI ==> use input as a rate matrix  (possible\\nvalues=\\\"A\\\", \\\"I\\\" default=`I')"
    num_err: "Specify how to treat issues with numerical errors\\nin probability:\\nI ==> Ignore\\nH ==> Halt the program\\nR ==> Rescale the probability  (possible\\nvalues=\\\"I\\\", \\\"H\\\", \\\"R\\\" default=`H')"
    t_zero: "Start time  (default=`0.1')"
    t_eight: "Stop time  (default=`1E12')"
    temp: "Temperature in Celsius  (default=`37.0')"
    n_states: "Read only first <int> states (assume\\nquasi-stationary distribution (derivation of\\nothers is = 0))"
    pzero: "Set initial population of state <int> to <double>\\nCan be given multiple times\\n(NOTE: sum of <double> must equal 1)\\n(example: \\\"--p0 2=1.0\\\" - state 2 has initial\\npopulation 100 percent)"
    tinc: "Time scaling factor (for log time-scale)\\n(default=`1.02')"
    degeneracy: "Consider degeneracy in transition rates\\n(default=off)"
    exponent: "Use matrix-expontent routines, rather than"
    dump_u: "Dump transition matrix U to file mx.txt (and to\\nbinary mx.bin - not fixed yet)  (default=off)"
    mathematica_matrix: "Dump transition matrix U to Mathematica-readable\\nfile mxMat.txt  (default=off)"
    bin: "Assume binary rates input  (default=off)"
    bar: "Input barriers file. Required in case \\\"-m I\\\"\\n(rates kinetics) AND \\\"-a\\\" (absorbing state) is\\ngiven"
    fpt: "Compute first passage times (FPT). Arguments:\\nall => compute all FPT (slow)\\n<num> - compute FPT to state <num> from all\\nstates"
    recover_e: "Recover from pre-ccomputes eigenvalues and"
    dump_e: "Dump eigenvalues and eigenvectors to a binary\\nrecovery file and continue with iteration\\n(default=off)"
    dump_x: "Dump eigenvalues to ASCII file and exit (do not\\niterate)  (default=off)"
    info: "Show settings  (default=off)"
    verbose: "Verbose output  (default=off)"
    quiet: "Be silent (do not print out the output)\\n(default=off)"
    fpt_file: "Filename of FPT file (provided -t option given)"
    visualize: "Filename where to print a visualization of rate\\ngraph (without file subscript, two files will be\\ngenerated: .dot and .eps with text and visual\\nrepresentation of graph)"
    just_shorten: "Do not diagonalize and iterate, just shorten input\\n(meaningfull only with -n X option or -fpt\\noption or --visualize option)  (default=off)"
    max_decrease: "Maximal decrease in dimension in one step\\n(default=`1000000')"
    feps: "Machine precision used by LAPACK routines (and\\nmatrix aritmetic) -- if set to negative number,\\nthe lapack suggested value is used\\n(2*DLAMCH(\\\"S\\\") )  (default=`1E-15')"
    use_plus_i: "Use old treekin computation where we add identity\\nmatrix to transition matrix. Sometimes less\\nprecise (maybe sometimes also more precise), in\\nnormal case it should not affect results at all.\\n(default=off)"
    minimal_rate: "Rescale all rates to be higher than the minimal\\nrate using formula  \\\"rate ->\\nrate^(ln(desired_minimal_rate)/ln(minimal_rate))\\\",\\nwhere desired_minimal_rate is from input,\\nminimal_rate is the lowest from all rates in\\nrate matrix."
    hard_rescale: "Rescale all rates by a hard exponent (usually\\n0.0<HR<1.0). Formula: \\\"rate ->\\nrate^(hard-rescale)\\\". Overrides --minimal-rate\\nargument."
    equi_l_file: "Write equilibrium distribution into a file."
    times: "Multiply rates with a constant number."
    warnings: "Turn all the warnings about underflow on.\\n(default=off)\\n"
    diagonalization: "(default=off)"
    eigenvectors: "(default=off)"
  }
  output {
    File out_stdout = stdout()
  }
}