version 1.0

task DownsampleTraingenespl {
  input {
    Int? lambda
    File? intron_num_lst
    String train_genes_dot_gtf
    String out_dot_gtf
  }
  command <<<
    downsample_traingenes_pl \
      ~{train_genes_dot_gtf} \
      ~{out_dot_gtf} \
      ~{if defined(lambda) then ("--lambda " +  '"' + lambda + '"') else ""} \
      ~{if defined(intron_num_lst) then ("--intron_num_lst " +  '"' + intron_num_lst + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/braker2:2.1.6--hdfd78af_1"
  }
  parameter_meta {
    lambda: "Parameter lambda of Poisson distribution\\n(default value is 0)"
    intron_num_lst: "File with intron numbers per gene (selected)"
    train_genes_dot_gtf: "training gene structure file in gtf format (e.g. from\\nGeneMark-EX)."
    out_dot_gtf: "output file with downsampled training gene structures"
  }
  output {
    File out_stdout = stdout()
  }
}