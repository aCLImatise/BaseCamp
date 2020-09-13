version 1.0

task Efn2smp {
  input {
    Boolean? dna
    Boolean? ne
    File? print
    File? quiet
    Boolean? simple
    Boolean? write_details
    Boolean? alphabet
    Boolean? count
    Boolean? shape
    Boolean? shape_intercept
    Boolean? shape_slope
    Boolean? temperature
    Int efn_two
    File ct_file
    File output_file
  }
  command <<<
    efn2_smp \
      ~{efn_two} \
      ~{ct_file} \
      ~{output_file} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (ne) then "--ne" else ""} \
      ~{if (print) then "--print" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (simple) then "--simple" else ""} \
      ~{if (write_details) then "--writedetails" else ""} \
      ~{if (alphabet) then "--alphabet" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (shape) then "--SHAPE" else ""} \
      ~{if (shape_intercept) then "--SHAPEintercept" else ""} \
      ~{if (shape_slope) then "--SHAPEslope" else ""} \
      ~{if (temperature) then "--temperature" else ""}
  >>>
  parameter_meta {
    dna: "Specify that the sequence is DNA, and DNA parameters are to be used.\\nDefault is to use RNA parameters."
    ne: "Do not calculate experimental uncertainties"
    print: "Print the simple list file to standard output. This won't override default\\nbehavior of writing to a file. Thermodynamic files (if written) are not\\npiped. This option implies --quiet."
    quiet: "Suppress unnecessary output. This option is implied when the output file is\\n'-' (STDOUT) or when the --print flag is present."
    simple: "Specify the simple energy function for multibranch loops, used by the\\ndynamic programming algorithms (Fold, partition, stochastic, AllSub, etc.),\\nshould be used. If this is not specified, an more sophisticated energy\\nfunction is used, and the energies might not match those estimated for\\nstructures during structure prediction."
    write_details: "Write a thermodynamic details file. The thermodynamic details file replaces\\nthe list file that is outputted by default."
    alphabet: "Specify the name of a folding alphabet and associated nearest neighbor\\nparameters. The alphabet is the prefix for the thermodynamic parameter\\nfiles, e.g. \\\"rna\\\" for RNA parameters or \\\"dna\\\" for DNA parameters or a\\ncustom extended/modified alphabet. The thermodynamic parameters need to\\nreside in the at the location indicated by environment variable DATAPATH.\\nThe default is \\\"rna\\\" (i.e. use RNA parameters). This option overrides the\\n--DNA flag."
    count: "Specify a file where parameter usage counts will be exported"
    shape: "Specify a SHAPE constraints file to be applied. These constraints are\\npseudoenergy constraints.\\nDefault is to have no constraints applied."
    shape_intercept: "Specify an intercept used with SHAPE constraints.\\nDefault is -0.6 kcal/mol."
    shape_slope: "Specify a slope used with SHAPE constraints.\\nDefault is 1.8 kcal/mol."
    temperature: "Specify the temperature at which calculation takes place in Kelvin.\\nDefault is 310.15 K, which is 37 degrees C.\\n"
    efn_two: ""
    ct_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_print = "${in_print}"
    File out_quiet = "${in_quiet}"
    File out_output_file = "${in_output_file}"
  }
}