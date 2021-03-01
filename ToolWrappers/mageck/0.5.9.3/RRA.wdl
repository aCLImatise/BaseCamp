version 1.0

task RRA {
  input {
    File? format_item_i
    File? format_group_i
    Float? rra_only_smaller
    Float? rra_only_greater
    String? control
    Int? permutation
    Int? no_permutation_by_group_dot
    Int? skip_gene
    Int? min_percentage_goods_grn_a
    Int? min_number_goods_grn_a
    Int? max_sg_rna_per_gene_permutation
  }
  command <<<
    RRA \
      ~{if defined(format_item_i) then ("-i " +  '"' + format_item_i + '"') else ""} \
      ~{if defined(format_group_i) then ("-o " +  '"' + format_group_i + '"') else ""} \
      ~{if defined(rra_only_smaller) then ("-p " +  '"' + rra_only_smaller + '"') else ""} \
      ~{if defined(rra_only_greater) then ("-P " +  '"' + rra_only_greater + '"') else ""} \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(permutation) then ("--permutation " +  '"' + permutation + '"') else ""} \
      ~{if defined(no_permutation_by_group_dot) then ("--no-permutation-by-group. " +  '"' + no_permutation_by_group_dot + '"') else ""} \
      ~{if defined(skip_gene) then ("--skip-gene " +  '"' + skip_gene + '"') else ""} \
      ~{if defined(min_percentage_goods_grn_a) then ("--min-percentage-goodsgrna " +  '"' + min_percentage_goods_grn_a + '"') else ""} \
      ~{if defined(min_number_goods_grn_a) then ("--min-number-goodsgrna " +  '"' + min_number_goods_grn_a + '"') else ""} \
      ~{if defined(max_sg_rna_per_gene_permutation) then ("--max-sgrnapergene-permutation " +  '"' + max_sg_rna_per_gene_permutation + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format_item_i: ". Format: <item id> <group id> <list id> <value> [<probability>] [<chosen>]"
    format_group_i: ". Format: <group id> <number of items in the group> <lo-value> <false discovery rate>"
    rra_only_smaller: ". RRA only consider the items with percentile smaller than this parameter. Default=0.1"
    rra_only_greater: ". RRA only consider the items with percentile greater than this parameter. Default=-1.0"
    control: ". A list of control sgRNA names."
    permutation: ". The number of rounds of permutation. Increase this value if the number of genes is small. Default 100."
    no_permutation_by_group_dot: "default, gene permutation is performed separately, by their number of sgRNAs. Turning this option will perform permutation on all genes together. This makes the program faster, but the p value estimation is accurate only if the number of sgRNAs per gene is approximately the same."
    skip_gene: ". Genes to skip from doing permutation. Specify it multiple times if you need to skip more than 1 genes."
    min_percentage_goods_grn_a: ". Filter genes that have too few percentage of 'good sgrnas', or sgrnas that fall below the -p threshold. Must be a number between 0-1. Default 0 (do not filter genes)."
    min_number_goods_grn_a: ". Filter genes that have too few number of 'good sgrnas', or sgrnas that fall below the -p threshold. Must be an integer. Default 0 (do not filter genes)."
    max_sg_rna_per_gene_permutation: ". Only permute genes by group if the number of sgRNAs per gene is smaller than this number. This will save a lot of time if some regions are targeted by a large number of sgRNAs (usually hundreds). Must be an integer. Default 100."
  }
  output {
    File out_stdout = stdout()
    File out_format_group_i = "${in_format_group_i}"
  }
}