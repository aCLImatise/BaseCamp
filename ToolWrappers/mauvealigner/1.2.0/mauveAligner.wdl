version 1.0

task MauveAligner {
  input {
    File? output_file_name
    String? mums
    String? no_recursion
    String? no_lcb_extension
    Int? seed_size
    Int? max_extension_iterations
    String? eliminate_inclusions
    Int? weight
    File? match_input
    Boolean? lcb_match_input
    File? lcb_input
    File? scratch_path
    File? id_matrix
    Int? island_size
    File? island_output
    Int? backbone_size
    Int? max_backbone_gap
    File? backbone_output
    File? coverage_output
    String? repeats
    File? output_guide_tree
    String? collinear
    String? no_gapped_alignment
    Int? max_gapped_aligner_length
    Int? min_recursive_gap_length
    File? permutation_matrix_output
    Int? permutation_matrix_min_weight
    Directory? alignment_output_dir
    Directory? alignment_output_format
    File? output_alignment
    File seq_n_filename
    File s_mln_filename
  }
  command <<<
    mauveAligner \
      ~{seq_n_filename} \
      ~{s_mln_filename} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(mums) then ("--mums " +  '"' + mums + '"') else ""} \
      ~{if defined(no_recursion) then ("--no-recursion " +  '"' + no_recursion + '"') else ""} \
      ~{if defined(no_lcb_extension) then ("--no-lcb-extension " +  '"' + no_lcb_extension + '"') else ""} \
      ~{if defined(seed_size) then ("--seed-size " +  '"' + seed_size + '"') else ""} \
      ~{if defined(max_extension_iterations) then ("--max-extension-iterations " +  '"' + max_extension_iterations + '"') else ""} \
      ~{if defined(eliminate_inclusions) then ("--eliminate-inclusions " +  '"' + eliminate_inclusions + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if defined(match_input) then ("--match-input " +  '"' + match_input + '"') else ""} \
      ~{if (lcb_match_input) then "--lcb-match-input" else ""} \
      ~{if defined(lcb_input) then ("--lcb-input " +  '"' + lcb_input + '"') else ""} \
      ~{if defined(scratch_path) then ("--scratch-path " +  '"' + scratch_path + '"') else ""} \
      ~{if defined(id_matrix) then ("--id-matrix " +  '"' + id_matrix + '"') else ""} \
      ~{if defined(island_size) then ("--island-size " +  '"' + island_size + '"') else ""} \
      ~{if defined(island_output) then ("--island-output " +  '"' + island_output + '"') else ""} \
      ~{if defined(backbone_size) then ("--backbone-size " +  '"' + backbone_size + '"') else ""} \
      ~{if defined(max_backbone_gap) then ("--max-backbone-gap " +  '"' + max_backbone_gap + '"') else ""} \
      ~{if defined(backbone_output) then ("--backbone-output " +  '"' + backbone_output + '"') else ""} \
      ~{if defined(coverage_output) then ("--coverage-output " +  '"' + coverage_output + '"') else ""} \
      ~{if defined(repeats) then ("--repeats " +  '"' + repeats + '"') else ""} \
      ~{if defined(output_guide_tree) then ("--output-guide-tree " +  '"' + output_guide_tree + '"') else ""} \
      ~{if defined(collinear) then ("--collinear " +  '"' + collinear + '"') else ""} \
      ~{if defined(no_gapped_alignment) then ("--no-gapped-alignment " +  '"' + no_gapped_alignment + '"') else ""} \
      ~{if defined(max_gapped_aligner_length) then ("--max-gapped-aligner-length " +  '"' + max_gapped_aligner_length + '"') else ""} \
      ~{if defined(min_recursive_gap_length) then ("--min-recursive-gap-length " +  '"' + min_recursive_gap_length + '"') else ""} \
      ~{if defined(permutation_matrix_output) then ("--permutation-matrix-output " +  '"' + permutation_matrix_output + '"') else ""} \
      ~{if defined(permutation_matrix_min_weight) then ("--permutation-matrix-min-weight " +  '"' + permutation_matrix_min_weight + '"') else ""} \
      ~{if defined(alignment_output_dir) then ("--alignment-output-dir " +  '"' + alignment_output_dir + '"') else ""} \
      ~{if defined(alignment_output_format) then ("--alignment-output-format " +  '"' + alignment_output_format + '"') else ""} \
      ~{if defined(output_alignment) then ("--output-alignment " +  '"' + output_alignment + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_name: "Output file name.  Prints to screen by default"
    mums: "MUMs only, do not attempt to determine locally collinear blocks (LCBs)"
    no_recursion: "'t perform recursive anchor identification (implies --no-gapped-alignment)"
    no_lcb_extension: "determining LCBs, don't attempt to extend the LCBs"
    seed_size: "Initial seed match size, default is log_2( average seq. length )"
    max_extension_iterations: "Limit LCB extensions to this number of attempts, default is 4"
    eliminate_inclusions: "linked inclusions in subset matches."
    weight: "Minimum LCB weight in base pairs per sequence"
    match_input: "Use specified match file instead of searching for matches"
    lcb_match_input: "Indicates that the match input file contains matches that have been clustered into LCBs"
    lcb_input: "Use specified lcb file instead of constructing LCBs (skips LCB generation)"
    scratch_path: "For large genomes, use a directory for storage of temporary data.  Should be given two or more times to with different paths."
    id_matrix: "Generate LCB stats and write them to the specified file"
    island_size: "Find islands larger than the given number"
    island_output: "Output islands the given file (requires --island-size)"
    backbone_size: "Find stretches of backbone longer than the given number of b.p."
    max_backbone_gap: "Allow backbone to be interrupted by gaps up to this length in b.p."
    backbone_output: "Output islands the given file (requires --island-size)"
    coverage_output: "Output a coverage list to the specified file (- for stdout)"
    repeats: "a repeat map.  Only one sequence can be specified"
    output_guide_tree: "Write out a guide tree to the designated file"
    collinear: "that input sequences are collinear--they have no rearrangements"
    no_gapped_alignment: "'t perform a gapped alignment"
    max_gapped_aligner_length: "Maximum number of base pairs to attempt aligning with the gapped aligner"
    min_recursive_gap_length: "Minimum size of gaps that Mauve will perform recursive MUM anchoring on (Default is 200)"
    permutation_matrix_output: "Write out the LCBs as a signed permutation matrix to the given file"
    permutation_matrix_min_weight: "A permutation matrix will be written for every set of LCBs with weight between this value and the value of --weight"
    alignment_output_dir: "Outputs a set of alignment files (one per LCB) to a given directory"
    alignment_output_format: "Selects the output format for --alignment-output-dir"
    output_alignment: "Write out an XMFA format alignment to the designated file"
    seq_n_filename: ""
    s_mln_filename: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
    File out_coverage_output = "${in_coverage_output}"
    File out_output_guide_tree = "${in_output_guide_tree}"
    File out_permutation_matrix_output = "${in_permutation_matrix_output}"
    File out_output_alignment = "${in_output_alignment}"
  }
}