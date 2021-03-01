version 1.0

task LorikeetFixlineages {
  input {
    String? input_lineage_information
    File? output_file
    File? tree
    String? snp_matrix
    Int? distance
    Float? fraction
    String? jar
    String java
    String fix_lineages
  }
  command <<<
    lorikeet fix_lineages \
      ~{java} \
      ~{fix_lineages} \
      ~{if defined(input_lineage_information) then ("--input " +  '"' + input_lineage_information + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(snp_matrix) then ("--snpmatrix " +  '"' + snp_matrix + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_lineage_information: "Input lineage information. (Output of merge-spoligotypes)"
    output_file: "Output file."
    tree: "Phylogenetic tree file in NWK format."
    snp_matrix: "Matrix with pairwise SNP distances (created with pelican)"
    distance: "Maximum distance to consider closest neighbors. [Default=500]"
    fraction: "Fraction of closest neighbors that need to agree to perform change. [Default=0.6]\\n"
    jar: ""
    java: ""
    fix_lineages: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}