version 1.0

task Mapsembler2Extremities {
  input {
    Boolean? arg_kmer_size
    Boolean? starters
    Boolean? reads
    File? arg_output_substarters
    Boolean? min_solid_sub_km_er
    Boolean? debug
    Boolean? nb_cores
    Boolean? verbose
  }
  command <<<
    mapsembler2_extremities \
      ~{if (arg_kmer_size) then "--k" else ""} \
      ~{if (starters) then "--starters" else ""} \
      ~{if (reads) then "--reads" else ""} \
      ~{if (arg_output_substarters) then "--output" else ""} \
      ~{if (min_solid_sub_km_er) then "--min-solid-subkmer" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  parameter_meta {
    arg_kmer_size: "(1 arg) :    kmer size that will be used for mapsembler2  [default '']"
    starters: "(1 arg) :    starters fasta file  [default '']"
    reads: "(1 arg) :    reads dataset file name. Several reads sets can be provided, surrounded by \\\"'s and separated by a space (e.g. --reads \\\"reads1.fa reads2.fa\\\")  [default '']"
    arg_output_substarters: "(1 arg) :    output substarters file name  [default '']"
    min_solid_sub_km_er: "(1 arg) :    minimim abundance to keep a subkmer  [default '3']"
    debug: "(0 arg) :    debugging"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_substarters = "${in_arg_output_substarters}"
  }
}