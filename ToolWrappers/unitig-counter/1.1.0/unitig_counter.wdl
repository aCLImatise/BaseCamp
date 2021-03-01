version 1.0

task Unitigcounter {
  input {
    Boolean? gzip
    Boolean? strains
    Boolean? arg_kmer_size
    File? arg_path_folder
    Boolean? nb_cores
    Boolean? verbose
    Boolean? version
  }
  command <<<
    unitig_counter \
      ~{if (gzip) then "-gzip" else ""} \
      ~{if (strains) then "-strains" else ""} \
      ~{if (arg_kmer_size) then "-k" else ""} \
      ~{if (arg_path_folder) then "-output" else ""} \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gzip: "(0 arg) :    Compress unitig output using gzip."
    strains: "(1 arg) :    A text file describing the strains containing 2 columns: 1) ID of the strain; 2) Path to a multi-fasta file containing the sequences of the strain. This file needs a header."
    arg_kmer_size: "(1 arg) :    K-mer size.  [default '31']"
    arg_path_folder: "(1 arg) :    Path to the folder where the final and temporary files will be stored.  [default 'output']"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    version: "(0 arg) :    version"
  }
  output {
    File out_stdout = stdout()
    File out_arg_path_folder = "${in_arg_path_folder}"
  }
}