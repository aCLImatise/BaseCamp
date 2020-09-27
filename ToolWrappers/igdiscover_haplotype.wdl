version 1.0

task IgdiscoverHaplotype {
  input {
    String? v_gene
    File? restrict
    File? order
    File? plot
    File? structure_plot
    String? d_evalue
    String detected
    Float zero_dot_zero_zero_zero_one
  }
  command <<<
    igdiscover haplotype \
      ~{detected} \
      ~{zero_dot_zero_zero_zero_one} \
      ~{if defined(v_gene) then ("--v-gene " +  '"' + v_gene + '"') else ""} \
      ~{if defined(restrict) then ("--restrict " +  '"' + restrict + '"') else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(plot) then ("--plot " +  '"' + plot + '"') else ""} \
      ~{if defined(structure_plot) then ("--structure-plot " +  '"' + structure_plot + '"') else ""} \
      ~{if defined(d_evalue) then ("--d-evalue " +  '"' + d_evalue + '"') else ""}
  >>>
  parameter_meta {
    v_gene: "V gene to use for haplotyping J. Default: Auto-"
    restrict: "Restrict analysis to the genes named in the FASTA\\nfile. Only the sequence names are used!"
    order: "Sort the output according to the order of the records\\nin the given FASTA file."
    plot: "Write a haplotype plot to FILE"
    structure_plot: "Write a haplotype structure plot (counts binarized 0\\nand 1) to FILE\\n"
    d_evalue: ""
    detected: "--d-evalue D_EVALUE   Maximal allowed E-value for D gene match. Default:"
    zero_dot_zero_zero_zero_one: "--d-coverage D_COVERAGE, --D-coverage D_COVERAGE"
  }
  output {
    File out_stdout = stdout()
    File out_order = "${in_order}"
  }
}