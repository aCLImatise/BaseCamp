version 1.0

task RsatRandomgenes {
  input {
    Boolean? help
    Boolean? verbose
    File? specified_standard_output
    Boolean? org
    Boolean? features
    Boolean? feat_type
    Boolean? replace
    Boolean? number_random_genes
    Boolean? groups_number_random
    Boolean? pairs
    Int? fam
    Boolean? repeat
    String random_genes
    String organism_dot
    String util
    String families_dot
    String example
    Int pho_five
    Int pho_eight
    Int dal_five
    Int gap_one
  }
  command <<<
    rsat random_genes \
      ~{random_genes} \
      ~{organism_dot} \
      ~{util} \
      ~{families_dot} \
      ~{example} \
      ~{pho_five} \
      ~{pho_eight} \
      ~{dal_five} \
      ~{gap_one} \
      ~{if (help) then "-help" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if defined(specified_standard_output) then ("-o " +  '"' + specified_standard_output + '"') else ""} \
      ~{if (org) then "-org" else ""} \
      ~{if (features) then "-features" else ""} \
      ~{if (feat_type) then "-feattype" else ""} \
      ~{if (replace) then "-replace" else ""} \
      ~{if (number_random_genes) then "-n" else ""} \
      ~{if (groups_number_random) then "-g" else ""} \
      ~{if (pairs) then "-pairs" else ""} \
      ~{if defined(fam) then ("-fam " +  '"' + fam + '"') else ""} \
      ~{if (repeat) then "-repeat" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help: "(must be first argument) display options"
    verbose: "verbose"
    specified_standard_output: "if not specified, the standard output is used.\\nThis allows to place the command within a pipe."
    org: "organism"
    features: "alternate feature table. This option allows to speify\\nan alternate file where the ORF locations are found.\\nSee below for a description of the feature file format."
    feat_type: "Feature type.\\nSupported: gene,mRNA,tRNA,rRNA,scRNA,misc_RNA,CDS,start_codon,stop_codon,exon"
    replace: "random selection with replacement\\n(a same ORF might appear several times in the output)"
    number_random_genes: "#    number of random genes to return"
    groups_number_random: "#    groups (number of random groups)."
    pairs: "#\\nnumber of random pairs of genes to return. Each row of\\nthe output contains two genes, separated by a tab."
    fam: "file\\nA 2-column file containing gene names in the first\\ncolumn and group (cluster) name in the second column.\\n(same format as for multiple-group-analysis).\\nThe program returns a file of the same size as the\\ninput, where input genes have been substituted by\\nrandom genes."
    repeat: "#\\n(requires the option -fam)\\nNumber of repetitions for each input group.\\nThis option generates, for each input group, R output\\nrandom gene selections of the same size."
    random_genes: "2002 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)"
    organism_dot: "There are several modes of utilization.\\n(1) -n       returns random genes.\\n(2) -g       groups. Create a group file with g groups of n\\ngenes (n must be specified)\\n(3) -pairs   returns random pairs of genes.\\n(4) -fam     takes a group file (see multiple-group-analysis)\\nas input, and return another group file with\\nthe same number of groups, the same number\\nof random genes per group as in the input\\nfile. This allows to deal with groups of\\ndifferent sizes in the same file, and to\\nperform negative controls in exactly the same\\nconditions as the test."
    util: "USAGE"
    families_dot: "It is a text file containing 2 columns separated by"
    example: "; genes responding to Phosphate stress"
    pho_five: "PHO"
    pho_eight: "PHO"
    dal_five: "NIT"
    gap_one: "NIT"
  }
  output {
    File out_stdout = stdout()
    File out_specified_standard_output = "${in_specified_standard_output}"
  }
}