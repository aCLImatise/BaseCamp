version 1.0

task Cathsuperpose {
  input {
    Boolean? output_version_information
    Boolean? res_name_align
    File? fast_a_aln_in_file
    File? ssap_aln_in_file
    File? cora_aln_in_file
    File? ssap_scores_in_file
    Boolean? do_the_s_saps
    String? align_refining
    File? json_sup_in_file
    String? id
    File? pdb_in_file
    Boolean? pdb_s_from_stdin
    Int? align_regions
    File? aln_to_cath_aln_file
    Boolean? aln_to_cath_aln_stdout
    File? aln_to_fast_a_file
    Boolean? aln_to_fast_a_stdout
    File? aln_to_ssap_file
    Boolean? aln_to_ssap_stdout
    File? aln_to_html_file
    Boolean? aln_to_html_stdout
    File? sup_to_pdb_file
    Directory? sup_to_pdb_files_dir
    Boolean? sup_to_stdout
    Boolean? sup_to_pymol
    File? pymol_program
    File? sup_to_pymol_file
    File? sup_to_json_file
    Int? viewer_colours
    Boolean? gradient_colour_alignment
    Boolean? show_scores_if_present
    Boolean? scores_to_equivs
    Boolean? normalise_scores
    String? regions_context
    Int? show_dna_within_dist
    Int? show_organic_within_dist
    String no
    String alone
    String in_pdb
  }
  command <<<
    cath_superpose \
      ~{no} \
      ~{alone} \
      ~{in_pdb} \
      ~{if (output_version_information) then "-v" else ""} \
      ~{if (res_name_align) then "--res-name-align" else ""} \
      ~{if defined(fast_a_aln_in_file) then ("--fasta-aln-infile " +  '"' + fast_a_aln_in_file + '"') else ""} \
      ~{if defined(ssap_aln_in_file) then ("--ssap-aln-infile " +  '"' + ssap_aln_in_file + '"') else ""} \
      ~{if defined(cora_aln_in_file) then ("--cora-aln-infile " +  '"' + cora_aln_in_file + '"') else ""} \
      ~{if defined(ssap_scores_in_file) then ("--ssap-scores-infile " +  '"' + ssap_scores_in_file + '"') else ""} \
      ~{if (do_the_s_saps) then "--do-the-ssaps" else ""} \
      ~{if defined(align_refining) then ("--align-refining " +  '"' + align_refining + '"') else ""} \
      ~{if defined(json_sup_in_file) then ("--json-sup-infile " +  '"' + json_sup_in_file + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(pdb_in_file) then ("--pdb-infile " +  '"' + pdb_in_file + '"') else ""} \
      ~{if (pdb_s_from_stdin) then "--pdbs-from-stdin" else ""} \
      ~{if defined(align_regions) then ("--align-regions " +  '"' + align_regions + '"') else ""} \
      ~{if defined(aln_to_cath_aln_file) then ("--aln-to-cath-aln-file " +  '"' + aln_to_cath_aln_file + '"') else ""} \
      ~{if (aln_to_cath_aln_stdout) then "--aln-to-cath-aln-stdout" else ""} \
      ~{if defined(aln_to_fast_a_file) then ("--aln-to-fasta-file " +  '"' + aln_to_fast_a_file + '"') else ""} \
      ~{if (aln_to_fast_a_stdout) then "--aln-to-fasta-stdout" else ""} \
      ~{if defined(aln_to_ssap_file) then ("--aln-to-ssap-file " +  '"' + aln_to_ssap_file + '"') else ""} \
      ~{if (aln_to_ssap_stdout) then "--aln-to-ssap-stdout" else ""} \
      ~{if defined(aln_to_html_file) then ("--aln-to-html-file " +  '"' + aln_to_html_file + '"') else ""} \
      ~{if (aln_to_html_stdout) then "--aln-to-html-stdout" else ""} \
      ~{if defined(sup_to_pdb_file) then ("--sup-to-pdb-file " +  '"' + sup_to_pdb_file + '"') else ""} \
      ~{if defined(sup_to_pdb_files_dir) then ("--sup-to-pdb-files-dir " +  '"' + sup_to_pdb_files_dir + '"') else ""} \
      ~{if (sup_to_stdout) then "--sup-to-stdout" else ""} \
      ~{if (sup_to_pymol) then "--sup-to-pymol" else ""} \
      ~{if defined(pymol_program) then ("--pymol-program " +  '"' + pymol_program + '"') else ""} \
      ~{if defined(sup_to_pymol_file) then ("--sup-to-pymol-file " +  '"' + sup_to_pymol_file + '"') else ""} \
      ~{if defined(sup_to_json_file) then ("--sup-to-json-file " +  '"' + sup_to_json_file + '"') else ""} \
      ~{if defined(viewer_colours) then ("--viewer-colours " +  '"' + viewer_colours + '"') else ""} \
      ~{if (gradient_colour_alignment) then "--gradient-colour-alignment" else ""} \
      ~{if (show_scores_if_present) then "--show-scores-if-present" else ""} \
      ~{if (scores_to_equivs) then "--scores-to-equivs" else ""} \
      ~{if (normalise_scores) then "--normalise-scores" else ""} \
      ~{if defined(regions_context) then ("--regions-context " +  '"' + regions_context + '"') else ""} \
      ~{if defined(show_dna_within_dist) then ("--show-dna-within-dist " +  '"' + show_dna_within_dist + '"') else ""} \
      ~{if defined(show_organic_within_dist) then ("--show-organic-within-dist " +  '"' + show_organic_within_dist + '"') else ""}
  >>>
  parameter_meta {
    output_version_information: "[ --version ]                         Output version information"
    res_name_align: "Align residues by simply matching their names (numbers+insert)\\n(for multiple models of the same structure)"
    fast_a_aln_in_file: "Read FASTA alignment from file <file>"
    ssap_aln_in_file: "Read SSAP alignment from file <file>"
    cora_aln_in_file: "Read CORA alignment from file <file>"
    ssap_scores_in_file: "Glue pairwise alignments together using SSAP scores in file <file>\\nAssumes all .list alignment files in same directory"
    do_the_s_saps: "[=<dir>(=\\\"\\\")]             Do the required SSAPs in directory <dir>; use results as with --ssap-scores-infile\\nUse a suitable temp directory if none is specified"
    align_refining: "(=NO)            Apply <refn> refining to the alignment, one of available values:"
    json_sup_in_file: "Read superposition from file <file>"
    id: "Structure ids"
    pdb_in_file: "Read PDB from file <pdbfile> (may be specified multiple times)"
    pdb_s_from_stdin: "Read PDBs from stdin (separated by line: \\\"END   \\\")"
    align_regions: "Handle region(s) <regions> as the alignment part of the structure.\\nMay be specified multiple times, in correspondence with the structures.\\nFormat is: D[5inwB02]251-348:B,408-416A:B\\n(Put <regions> in quotes to prevent the square brackets confusing your shell (\\\"No match\\\"))"
    aln_to_cath_aln_file: "[EXPERIMENTAL] Write the alignment to a CATH alignment file"
    aln_to_cath_aln_stdout: "[EXPERIMENTAL] Print the alignment to stdout in CATH alignment format"
    aln_to_fast_a_file: "Write the alignment to a FASTA file"
    aln_to_fast_a_stdout: "Print the alignment to stdout in FASTA format"
    aln_to_ssap_file: "Write the alignment to a SSAP file"
    aln_to_ssap_stdout: "Print the alignment to stdout as SSAP"
    aln_to_html_file: "Write the alignment to a HTML file"
    aln_to_html_stdout: "Print the alignment to stdout as HTML"
    sup_to_pdb_file: "Write the superposed structures to a single PDB file arg, separated using faked chain codes"
    sup_to_pdb_files_dir: "Write the superposed structures to separate PDB files in directory arg"
    sup_to_stdout: "Print the superposed structures to stdout, separated using faked chain codes"
    sup_to_pymol: "Start up PyMOL for viewing the superposition"
    pymol_program: "(=\\\"pymol\\\")           Use arg as the PyMOL executable for viewing; may optionally include the full path"
    sup_to_pymol_file: "Write the superposition to a PyMOL script arg\\n(Recommended filename extension: .pml)"
    sup_to_json_file: "Write the superposition to JSON superposition file\\n(Recommended filename extension: .sup_json)"
    viewer_colours: "Use <colrs> to colour successive entries in the viewer\\n(format: colon-separated list of comma-separated triples of RGB values between 0 and 1)\\n(will wrap-around when it runs out of colours)"
    gradient_colour_alignment: "Colour the length of the alignment with a rainbow gradient (blue -> red)"
    show_scores_if_present: "Show the alignment scores\\n(use with gradient-colour-alignment)"
    scores_to_equivs: "Show the alignment scores to equivalent positions, which increases relative scores where few entries are aligned\\n(use with --gradient-colour-alignment and --show-scores-if-present)"
    normalise_scores: "When showing scores, normalise them to the highest score in the alignment\\n(use with --gradient-colour-alignment and --show-scores-if-present)"
    regions_context: "(=alone)     Show the alignment regions in the context <context>, one of available options:"
    show_dna_within_dist: "(=4)       Show DNA within <dist>Å of the alignment regions"
    show_organic_within_dist: "(=10)  Show organic molecules within <dist>Å of the alignment regions"
    no: "- Don't refine the alignment"
    alone: "- alone"
    in_pdb: "- within the PDB in which the regions appear"
  }
  output {
    File out_stdout = stdout()
  }
}