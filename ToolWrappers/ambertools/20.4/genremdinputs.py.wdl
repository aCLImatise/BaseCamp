version 1.0

task Genremdinputspy {
  input {
    Boolean? author
    Boolean? overwrite
    Boolean? inputs
    Boolean? group_file
    Boolean? reference_mdin_files
    Boolean? di_sang
    File? re_md_file_out
    Int? random_seed
    Boolean? no_sort
    Boolean? verbose
    String required_arguments
  }
  command <<<
    genremdinputs_py \
      ~{required_arguments} \
      ~{if (author) then "--author" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (inputs) then "-inputs" else ""} \
      ~{if (group_file) then "-groupfile" else ""} \
      ~{if (reference_mdin_files) then "-i" else ""} \
      ~{if (di_sang) then "-disang" else ""} \
      ~{if defined(re_md_file_out) then ("-remd-file-out " +  '"' + re_md_file_out + '"') else ""} \
      ~{if defined(random_seed) then ("-randomseed " +  '"' + random_seed + '"') else ""} \
      ~{if (no_sort) then "-nosort" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    author: "show the program's author name and exit"
    overwrite: "Allow existing outputs to be overwritten. Default:"
    inputs: "[FILE [FILE ...]]\\nInput files containing pH, Redox Potential,\\nTemperature, or Hamiltonian values. Each file must\\nstate the type of exchange on the first line (same as\\nin the exch_type flag of the remd-file for M-REMD\\nsimulations), a description in the second line, and\\nall variable values on the following lines (one value\\nper line). As the number of replicas on each REMD\\ndimension needs to be even, the number of values needs\\nto be even."
    group_file: "[FILE [FILE ...]]\\nReference groupfiles. Each reference groupfile must\\ncontain only a single block referring to a single\\nreplica. In this block the replica number must be\\nreplaced by REPNUM (the program will replace this flag\\nlater in order to create the whole groupfile file). If\\ndoing a REMD simulation with the Hamiltonian\\ndimension, the prmtop file name may be replaced by the\\nsame flag entered in the first line of the hamiltonian\\nfile given in the -inputs flag. The reference\\ngroupfiles must be given in the same order as their\\ncorresponding reference mdin files."
    reference_mdin_files: "[FILE [FILE ...]]  Reference mdin files. Each reference mdin file must\\ncontain the variable(s) being exchanged replaced by\\nthe same flag entered in the first line of the file\\ngiven in the -inputs flag. Examples: solvph=PH,\\nsolve=REDOX, temp0=TEMPERATURE. In order to insure\\neach replica has a different random seed (recommended)\\nyou must place ig=RANDOMNUM. The reference mdin files\\nmust be given in the same order as their corresponding\\nreference groupfiles."
    di_sang: "[FILE [FILE ...]]\\nReference DISANG files. If doing Umbrella Sampling in\\na Hamiltonian dimension, the target distance or angle\\nmust be replaced by the same flag entered in the first\\nline of the file given in the -inputs flag. Example:\\nr1=-99.0, r2=HAMILTONIAN, r3=HAMILTONIAN, r4=99.0. The\\nreference disang files must be given in the same order\\nas their corresponding reference mdin files."
    re_md_file_out: "Name of the -remd-file output file. Default:\\nremd.dim.[REMD dimensions types]remd"
    random_seed: "Seed for the random number generator. Default: 10"
    no_sort: "If stated, the replica ordering per dimension will not\\nbe sorted. If not stated, sorting will be done if the\\ninput values are float or integer."
    verbose: "If stated, prints information on the screen while the\\nprogram is executed."
    required_arguments: "Required Arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_re_md_file_out = "${in_re_md_file_out}"
  }
}