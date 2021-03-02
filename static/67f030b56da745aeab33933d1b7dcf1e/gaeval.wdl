version 1.0

task Gaeval {
  input {
    Boolean? alpha
    Boolean? beta
    Boolean? gamma
    Boolean? epsilon
    Boolean? exp_cds
    Boolean? exp_five_put_r
    Boolean? exp_three_put_r
    Int alignments_dot_gff_three
    Int genes_dot_gff_three
    Int? more_genes_dot_gff_three
  }
  command <<<
    gaeval \
      ~{alignments_dot_gff_three} \
      ~{genes_dot_gff_three} \
      ~{more_genes_dot_gff_three} \
      ~{if (alpha) then "--alpha" else ""} \
      ~{if (beta) then "--beta" else ""} \
      ~{if (gamma) then "--gamma" else ""} \
      ~{if (epsilon) then "--epsilon" else ""} \
      ~{if (exp_cds) then "--exp-cds" else ""} \
      ~{if (exp_five_put_r) then "--exp-5putr" else ""} \
      ~{if (exp_three_put_r) then "--exp-3putr" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/aegean:0.16.0--hc2cb157_0"
  }
  parameter_meta {
    alpha: ": DOUBLE      introns confirmed, or % expected CDS length for\\nsingle-exon genes; default is 0.6"
    beta: ": DOUBLE       exon coverage; default is 0.3"
    gamma: ": DOUBLE      % expected 5' UTR length; default is 0.05"
    epsilon: ": DOUBLE    % expected 3' UTR length; default is 0.05"
    exp_cds: ": INT       expected CDS length (in bp); default is 400"
    exp_five_put_r: ": INT     expected 5' UTR length; default is 200"
    exp_three_put_r: ": INT     expected 3' UTR length; default is 100"
    alignments_dot_gff_three: ""
    genes_dot_gff_three: ""
    more_genes_dot_gff_three: ""
  }
  output {
    File out_stdout = stdout()
  }
}