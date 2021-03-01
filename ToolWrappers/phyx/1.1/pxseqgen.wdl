version 1.0

task Pxseqgen {
  input {
    File? tree_f
    File? out_f
    Int? length
    String? base_f
    Int? gamma
    Float? pin_var
    Int? rate_mat
    String? aa_rate_mat
    String? aa_base_freq
    Boolean? protein
    Int? n_reps
    Int? seed
    Boolean? ancestors
    Boolean? print_node_labels
    Float? multi_model
    String? root_seq
    Boolean? citation
  }
  command <<<
    pxseqgen \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(base_f) then ("--basef " +  '"' + base_f + '"') else ""} \
      ~{if defined(gamma) then ("--gamma " +  '"' + gamma + '"') else ""} \
      ~{if defined(pin_var) then ("--pinvar " +  '"' + pin_var + '"') else ""} \
      ~{if defined(rate_mat) then ("--ratemat " +  '"' + rate_mat + '"') else ""} \
      ~{if defined(aa_rate_mat) then ("--aaratemat " +  '"' + aa_rate_mat + '"') else ""} \
      ~{if defined(aa_base_freq) then ("--aabasefreq " +  '"' + aa_base_freq + '"') else ""} \
      ~{if (protein) then "--protein" else ""} \
      ~{if defined(n_reps) then ("--nreps " +  '"' + n_reps + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (ancestors) then "--ancestors" else ""} \
      ~{if (print_node_labels) then "--printnodelabels" else ""} \
      ~{if defined(multi_model) then ("--multimodel " +  '"' + multi_model + '"') else ""} \
      ~{if defined(root_seq) then ("--rootseq " +  '"' + root_seq + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    tree_f: "input treefile, STDIN otherwise"
    out_f: "output seq file, STOUT otherwise"
    length: "length of sequences to generate. default is 1000"
    base_f: "comma-delimited base freqs in order: A,C,G,T. default is equal"
    gamma: "gamma shape value. default is no rate variation"
    pin_var: "proportion of invariable sites. default is 0.0"
    rate_mat: "comma-delimited input values for rate matrix. default is JC69\\norder: A<->C,A<->G,A<->T,C<->G,C<->T,G<->T"
    aa_rate_mat: "comma-delimited amino acid rate matrix. default is all freqs equal\\norder is ARNDCQEGHILKMFPSTWYV"
    aa_base_freq: "AA frequencies, order: ARNDCQEGHILKMFPSTWYV"
    protein: "run as amino acid"
    n_reps: "number of replicates"
    seed: "random number seed, clock otherwise"
    ancestors: "print the ancestral node sequences. default is no\\nuse -p for the nodes labels"
    print_node_labels: "print newick with internal node labels. default is no"
    multi_model: "specify multiple models across tree\\ninput is as follows:\\nA<->C,A<->G,A<->T,C<->G,C<->T,G<->T,Node#,A<->C,A<->G,A<->T,C<->G,C<->T,G<->T\\nEX:.3,.3,.3,.3,.3,1,.3,.3,.2,.5,.4"
    root_seq: "set root sequence. default is random (from basefreqs)"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}