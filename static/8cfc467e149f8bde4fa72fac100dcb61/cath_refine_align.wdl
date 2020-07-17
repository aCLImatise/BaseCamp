version 1.0

task CathRefineAlign {
  input {
    Boolean? output_version_information
    Boolean? res_name_align
    File? fast_a_aln_in_file
    File? ssap_aln_in_file
    File? cora_aln_in_file
    File? ssap_scores_in_file
    Boolean? do_the_s_saps
    String? align_refining
    String? id
    String? pdb_in_file
    Boolean? pdb_s_from_stdin
    String? align_regions
    String? aln_to_cath_aln_file
    Boolean? aln_to_cath_aln_stdout
    String? aln_to_fast_a_file
    Boolean? aln_to_fast_a_stdout
    String? aln_to_ssap_file
    Boolean? aln_to_ssap_stdout
    String? aln_to_html_file
    Boolean? aln_to_html_stdout
    String? sup_to_pdb_file
    String? sup_to_pdb_files_dir
    Boolean? sup_to_stdout
    Boolean? sup_to_pymol
    String? pymol_program
    String? sup_to_pymol_file
    String? sup_to_json_file
    String? viewer_colours
    Boolean? gradient_colour_alignment
    Boolean? show_scores_if_present
    Boolean? scores_to_equivs
    Boolean? normalise_scores
    String alignment_source
    String protein_file_source
    String? superposition_outputs
  }
  command <<<
    cath-refine-align \
      ~{alignment_source} \
      ~{protein_file_source} \
      ~{superposition_outputs} \
      ~{true="-v" false="" output_version_information} \
      ~{true="--res-name-align" false="" res_name_align} \
      ~{if defined(fast_a_aln_in_file) then ("--fasta-aln-infile " +  '"' + fast_a_aln_in_file + '"') else ""} \
      ~{if defined(ssap_aln_in_file) then ("--ssap-aln-infile " +  '"' + ssap_aln_in_file + '"') else ""} \
      ~{if defined(cora_aln_in_file) then ("--cora-aln-infile " +  '"' + cora_aln_in_file + '"') else ""} \
      ~{if defined(ssap_scores_in_file) then ("--ssap-scores-infile " +  '"' + ssap_scores_in_file + '"') else ""} \
      ~{true="--do-the-ssaps" false="" do_the_s_saps} \
      ~{if defined(align_refining) then ("--align-refining " +  '"' + align_refining + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(pdb_in_file) then ("--pdb-infile " +  '"' + pdb_in_file + '"') else ""} \
      ~{true="--pdbs-from-stdin" false="" pdb_s_from_stdin} \
      ~{if defined(align_regions) then ("--align-regions " +  '"' + align_regions + '"') else ""} \
      ~{if defined(aln_to_cath_aln_file) then ("--aln-to-cath-aln-file " +  '"' + aln_to_cath_aln_file + '"') else ""} \
      ~{true="--aln-to-cath-aln-stdout" false="" aln_to_cath_aln_stdout} \
      ~{if defined(aln_to_fast_a_file) then ("--aln-to-fasta-file " +  '"' + aln_to_fast_a_file + '"') else ""} \
      ~{true="--aln-to-fasta-stdout" false="" aln_to_fast_a_stdout} \
      ~{if defined(aln_to_ssap_file) then ("--aln-to-ssap-file " +  '"' + aln_to_ssap_file + '"') else ""} \
      ~{true="--aln-to-ssap-stdout" false="" aln_to_ssap_stdout} \
      ~{if defined(aln_to_html_file) then ("--aln-to-html-file " +  '"' + aln_to_html_file + '"') else ""} \
      ~{true="--aln-to-html-stdout" false="" aln_to_html_stdout} \
      ~{if defined(sup_to_pdb_file) then ("--sup-to-pdb-file " +  '"' + sup_to_pdb_file + '"') else ""} \
      ~{if defined(sup_to_pdb_files_dir) then ("--sup-to-pdb-files-dir " +  '"' + sup_to_pdb_files_dir + '"') else ""} \
      ~{true="--sup-to-stdout" false="" sup_to_stdout} \
      ~{true="--sup-to-pymol" false="" sup_to_pymol} \
      ~{if defined(pymol_program) then ("--pymol-program " +  '"' + pymol_program + '"') else ""} \
      ~{if defined(sup_to_pymol_file) then ("--sup-to-pymol-file " +  '"' + sup_to_pymol_file + '"') else ""} \
      ~{if defined(sup_to_json_file) then ("--sup-to-json-file " +  '"' + sup_to_json_file + '"') else ""} \
      ~{if defined(viewer_colours) then ("--viewer-colours " +  '"' + viewer_colours + '"') else ""} \
      ~{true="--gradient-colour-alignment" false="" gradient_colour_alignment} \
      ~{true="--show-scores-if-present" false="" show_scores_if_present} \
      ~{true="--scores-to-equivs" false="" scores_to_equivs} \
      ~{true="--normalise-scores" false="" normalise_scores}
  >>>
  parameter_meta {
    output_version_information: "[ --version ]                   Output version information"
    res_name_align: "Align residues by simply matching their names (numbers+insert) (for multiple models of the same structure)"
    fast_a_aln_in_file: "Read FASTA alignment from file <file>"
    ssap_aln_in_file: "Read SSAP alignment from file <file>"
    cora_aln_in_file: "Read CORA alignment from file <file>"
    ssap_scores_in_file: "Glue pairwise alignments together using SSAP scores in file <file> Assumes all .list alignment files in same directory"
    do_the_s_saps: "[=<dir>(=\"\")]       Do the required SSAPs in directory <dir>; use results as with --ssap-scores-infile Use a suitable temp directory if none is specified"
    align_refining: "(=HEAVY)   Apply <refn> refining to the alignment, one of available values: NO    - Don't refine the alignment LIGHT - Refine any alignments with few entries; glue alignments one more entry at a time HEAVY - Perform heavy (slow) refining on the alignment, including when gluing alignments together This can change the method of gluing alignments under --ssap-scores-infile and --do-the-ssaps"
    id: "Structure ids"
    pdb_in_file: "Read PDB from file <pdbfile> (may be specified multiple times)"
    pdb_s_from_stdin: "Read PDBs from stdin (separated by line: \"END   \")"
    align_regions: "Handle region(s) <regions> as the alignment part of the structure. May be specified multiple times, in correspondence with the structures. Format is: D[5inwB02]251-348:B,408-416A:B (Put <regions> in quotes to prevent the square brackets confusing your shell (\"No match\"))"
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
    pymol_program: "(=\"pymol\")     Use arg as the PyMOL executable for viewing; may optionally include the full path"
    sup_to_pymol_file: "Write the superposition to a PyMOL script arg (Recommended filename extension: .pml)"
    sup_to_json_file: "Write the superposition to JSON superposition file (Recommended filename extension: .sup_json)"
    viewer_colours: "Use <colrs> to colour successive entries in the viewer (format: colon-separated list of comma-separated triples of RGB values between 0 and 1) (will wrap-around when it runs out of colours)"
    gradient_colour_alignment: "Colour the length of the alignment with a rainbow gradient (blue -> red)"
    show_scores_if_present: "Show the alignment scores (use with gradient-colour-alignment)"
    scores_to_equivs: "Show the alignment scores to equivalent positions, which increases relative scores where few entries are aligned (use with --gradient-colour-alignment and --show-scores-if-present)"
    normalise_scores: "When showing scores, normalise them to the highest score in the alignment (use with --gradient-colour-alignment and --show-scores-if-present)"
    alignment_source: ""
    protein_file_source: ""
    superposition_outputs: ""
  }
}