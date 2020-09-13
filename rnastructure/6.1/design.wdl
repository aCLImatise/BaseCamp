version 1.0

task Design {
  input {
    Boolean? dna
    Boolean? preselect
    Boolean? timer
    Boolean? alphabet
    Boolean? error
    Boolean? maxdepth
    Boolean? max_leaf
    Boolean? max_mutate
    Boolean? max_redesign
    File? specify_output_file
    Boolean? seed
    File ct_structure_file
  }
  command <<<
    design \
      ~{ct_structure_file} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (preselect) then "--preselect" else ""} \
      ~{if (timer) then "--timer" else ""} \
      ~{if (alphabet) then "--alphabet" else ""} \
      ~{if (error) then "--error" else ""} \
      ~{if (maxdepth) then "--maxdepth" else ""} \
      ~{if (max_leaf) then "--maxleaf" else ""} \
      ~{if (max_mutate) then "--maxmutate" else ""} \
      ~{if (max_redesign) then "--maxredesign" else ""} \
      ~{if (specify_output_file) then "--output" else ""} \
      ~{if (seed) then "--seed" else ""}
  >>>
  parameter_meta {
    dna: "Specify that the sequence is DNA, and DNA parameters are to be used. The\\ndefault is to use RNA parameters."
    preselect: "Specify that use pre-selected sequence segments should be used. The default\\nis that all nucleotides are chosen at random."
    timer: "Use a timer to measure the duration of the design process and print the\\nelapsed time to standard output."
    alphabet: "Specify the name of a folding alphabet and associated nearest neighbor\\nparameters. The alphabet is the prefix for the thermodynamic parameter\\nfiles, e.g. \\\"rna\\\" for RNA parameters or \\\"dna\\\" for DNA parameters or a\\ncustom extended/modified alphabet. The thermodynamic parameters need to\\nreside in the at the location indicated by environment variable DATAPATH.\\nThe default is \\\"rna\\\" (i.e. use RNA parameters). This option overrides the\\n--DNA flag."
    error: "The maximum allowed ensemble defect per nucleotide."
    maxdepth: "Max-depth: The maximum extent to which the structure will be sub-divided in\\nthe binary decomposition. The default is 5."
    max_leaf: "The maximum number of times a leaf can be re-optimized at random. The\\ndefault is 3."
    max_mutate: "The maximum number of times a nucleotide will be mutated during\\ndefect-weighted reoptimization. The default is 4."
    max_redesign: "The maximum number of redesigns per parent node. The default is 10."
    specify_output_file: "Specify the output file. By default the resulting designed sequence is\\nwritten to standard output only. This flag instructs the program to output\\nthe structure (in ct format) to the specified file."
    seed: "Specify a random seed. This is required to get exactly reproducible\\nresults. (The default is to use a seed based on the current system time).\\n"
    ct_structure_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}