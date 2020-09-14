version 1.0

task Kissreads2 {
  input {
    Boolean? phasing
    Boolean? arg_radseq_option
    Boolean? predictions
    Boolean? reads
    File? unco
    File? co
    Boolean? hamming
    Boolean? coverage_file
    Boolean? arg_size_used_spanning
    Boolean? index_stride
    Boolean? size_seeds
    Boolean? output_fast_a
    Boolean? genotype
    Boolean? nb_cores
    Boolean? verbose
    Boolean? version
  }
  command <<<
    kissreads2 \
      ~{if (phasing) then "-phasing" else ""} \
      ~{if (arg_radseq_option) then "-x" else ""} \
      ~{if (predictions) then "-predictions" else ""} \
      ~{if (reads) then "-reads" else ""} \
      ~{if (unco) then "-unco" else ""} \
      ~{if (co) then "-co" else ""} \
      ~{if (hamming) then "-hamming" else ""} \
      ~{if (coverage_file) then "-coverage_file" else ""} \
      ~{if (arg_size_used_spanning) then "-k" else ""} \
      ~{if (index_stride) then "-index_stride" else ""} \
      ~{if (size_seeds) then "-size_seeds" else ""} \
      ~{if (output_fast_a) then "-output_fasta" else ""} \
      ~{if (genotype) then "-genotype" else ""} \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    phasing: "(0 arg) :    [Experimental] Phase alleles mapped by the same (pair of) read(s)"
    arg_radseq_option: "(0 arg) :    radseq option, homogeneous read depth along the prediction"
    predictions: "(1 arg) :    Input predictions"
    reads: "(1 arg) :    Input reads"
    unco: "(1 arg) :    Output uncoherent file name  [default '/dev/null']"
    co: "(1 arg) :    Output coherent file name"
    hamming: "(1 arg) :    Maximal hamming distance authorized while maping  [default '1']"
    coverage_file: "(1 arg) :    File (.h5) generated by kissnp2, containing the coverage threshold per read set  [default '_removemeplease']"
    arg_size_used_spanning: "(1 arg) :    Size of k, used as minial overlap and kmer spanning read coherence  [default '31']"
    index_stride: "(1 arg) :    Index Stride  [default '2']"
    size_seeds: "(1 arg) :    Size of the used seeds (distinct from the size of k)  [default '25']"
    output_fast_a: "(0 arg) :    Output standart Fasta. By default the output is formatted especially for the discoSnp++ pipeline"
    genotype: "(0 arg) :    Compute genotypes"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    version: "(0 arg) :    version"
  }
  output {
    File out_stdout = stdout()
    File out_unco = "${in_unco}"
    File out_co = "${in_co}"
  }
}