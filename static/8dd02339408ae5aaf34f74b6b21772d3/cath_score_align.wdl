version 1.0

task CathScoreAlign {
  input {
    Boolean? output_version_information
    Boolean? res_name_align
    File? fast_a_aln_in_file
    File? ssap_aln_in_file
    File? cora_aln_in_file
    File? ssap_scores_in_file
    Boolean? do_the_s_saps
    String? align_refining
    String? pdb_in_file
    Boolean? pdb_s_from_stdin
    String alignment_source
    String protein_file_source
    String? superposition_outputs
  }
  command <<<
    cath-score-align \
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
      ~{if defined(pdb_in_file) then ("--pdb-infile " +  '"' + pdb_in_file + '"') else ""} \
      ~{true="--pdbs-from-stdin" false="" pdb_s_from_stdin}
  >>>
  parameter_meta {
    output_version_information: "[ --version ]                Output version information"
    res_name_align: "Align residues by simply matching their names (numbers+insert) (for multiple models of the same structure)"
    fast_a_aln_in_file: "Read FASTA alignment from file <file>"
    ssap_aln_in_file: "Read SSAP alignment from file <file>"
    cora_aln_in_file: "Read CORA alignment from file <file>"
    ssap_scores_in_file: "Glue pairwise alignments together using SSAP scores in file <file> Assumes all .list alignment files in same directory"
    do_the_s_saps: "[=<dir>(=\"\")]    Do the required SSAPs in directory <dir>; use results as with --ssap-scores-infile Use a suitable temp directory if none is specified"
    align_refining: "(=NO)   Apply <refn> refining to the alignment, one of available values: NO    - Don't refine the alignment LIGHT - Refine any alignments with few entries; glue alignments one more entry at a time HEAVY - Perform heavy (slow) refining on the alignment, including when gluing alignments together This can change the method of gluing alignments under --ssap-scores-infile and --do-the-ssaps"
    pdb_in_file: "Read PDB from file <pdbfile> (may be specified multiple times)"
    pdb_s_from_stdin: "Read PDBs from stdin (separated by line: \"END   \")"
    alignment_source: ""
    protein_file_source: ""
    superposition_outputs: ""
  }
}