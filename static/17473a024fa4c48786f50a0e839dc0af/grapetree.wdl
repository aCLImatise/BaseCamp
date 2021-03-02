version 1.0

task Grapetree {
  input {
    File? profile
    Int? method
    Int? matrix
    Boolean? re_craft
    Int? missing
    Boolean? wg_mlst
    Int? heuristic
    Int? n_proc
    Boolean? check
    Float? block_penalty
  }
  command <<<
    grapetree \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if (re_craft) then "--recraft" else ""} \
      ~{if defined(missing) then ("--missing " +  '"' + missing + '"') else ""} \
      ~{if (wg_mlst) then "--wgMLST" else ""} \
      ~{if defined(heuristic) then ("--heuristic " +  '"' + heuristic + '"') else ""} \
      ~{if defined(n_proc) then ("--n_proc " +  '"' + n_proc + '"') else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if defined(block_penalty) then ("--block_penalty " +  '"' + block_penalty + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/grapetree:2.1--pyh3252c3a_0"
  }
  parameter_meta {
    profile: "[REQUIRED] An input filename of a file containing MLST or SNP character data, OR a fasta file containing aligned sequences."
    method: "\\\"MSTreeV2\\\" [DEFAULT]\\n\\\"MSTree\\\"\\n\\\"NJ\\\": FastME V2 NJ tree\\n\\\"RapidNJ\\\": RapidNJ for very large datasets\\n\\\"ninja\\\": Alternative NJ algorithm for very large datasets\\n\\\"distance\\\": allelic distance matrix in PHYLIP format."
    matrix: "\\\"symmetric\\\": [DEFAULT: MSTree, NJ and RapidNJ]\\n\\\"asymmetric\\\": [DEFAULT: MSTreeV2].\\n\\\"blockwise\\\": (experimental for ordered loci) A different locus is given less penalty (defined by -b) if the previous locus is also different"
    re_craft: "Triggers local branch recrafting. [DEFAULT: MSTreeV2]."
    missing: "ONLY FOR symmetric DISTANCE MATRIX.\\n0: [DEFAULT] ignore missing data in pairwise comparison.\\n1: Remove column with missing data.\\n2: treat data as an allele.\\n3: Absolute number of allelic differences."
    wg_mlst: "[EXPERIMENTAL] a better support of wgMLST schemes."
    heuristic: "Tiebreak heuristic used only in MSTree and MSTreeV2\\n\\\"eBurst\\\" [DEFAULT: MSTree]\\n\\\"harmonic\\\" [DEFAULT: MSTreeV2]"
    n_proc: "Number of CPU processes in parallel use. [DEFAULT]: 5."
    check: "Only calculate the expected time/memory requirements."
    block_penalty: "[DEFAULT: 0.01] The penalty that is given to a different locus if it is led by another difference. Only works for \\\"-x blockwise\\\"\\n"
  }
  output {
    File out_stdout = stdout()
  }
}