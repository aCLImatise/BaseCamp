version 1.0

task DownsampleTraingenes.pl {
  input {
    String? lambda
    String? intron_num_lst
    String train_genes_dot_gtf
    String out_dot_gtf
  }
  command <<<
    downsample_traingenes.pl \
      ~{train_genes_dot_gtf} \
      ~{out_dot_gtf} \
      ~{if defined(lambda) then ("--lambda " +  '"' + lambda + '"') else ""} \
      ~{if defined(intron_num_lst) then ("--intron_num_lst " +  '"' + intron_num_lst + '"') else ""}
  >>>
  parameter_meta {
    lambda: "Parameter lambda of Poisson distribution (default value is 0)"
    intron_num_lst: "File with intron numbers per gene (selected)"
    train_genes_dot_gtf: "training gene structure file in gtf format (e.g. from GeneMark-EX)."
    out_dot_gtf: "output file with downsampled training gene structures"
  }
}