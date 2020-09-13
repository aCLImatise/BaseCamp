version 1.0

task Cathscorealign {
  input {
    Boolean? output_version_information
    Boolean? res_name_align
    File? fast_a_aln_in_file
    File? ssap_aln_in_file
    File? cora_aln_in_file
    File? ssap_scores_in_file
    Boolean? do_the_s_saps
    String? align_refining
    File? pdb_in_file
    Boolean? pdb_s_from_stdin
    String no
  }
  command <<<
    cath_score_align \
      ~{no} \
      ~{if (output_version_information) then "-v" else ""} \
      ~{if (res_name_align) then "--res-name-align" else ""} \
      ~{if defined(fast_a_aln_in_file) then ("--fasta-aln-infile " +  '"' + fast_a_aln_in_file + '"') else ""} \
      ~{if defined(ssap_aln_in_file) then ("--ssap-aln-infile " +  '"' + ssap_aln_in_file + '"') else ""} \
      ~{if defined(cora_aln_in_file) then ("--cora-aln-infile " +  '"' + cora_aln_in_file + '"') else ""} \
      ~{if defined(ssap_scores_in_file) then ("--ssap-scores-infile " +  '"' + ssap_scores_in_file + '"') else ""} \
      ~{if (do_the_s_saps) then "--do-the-ssaps" else ""} \
      ~{if defined(align_refining) then ("--align-refining " +  '"' + align_refining + '"') else ""} \
      ~{if defined(pdb_in_file) then ("--pdb-infile " +  '"' + pdb_in_file + '"') else ""} \
      ~{if (pdb_s_from_stdin) then "--pdbs-from-stdin" else ""}
  >>>
  parameter_meta {
    output_version_information: "[ --version ]                Output version information"
    res_name_align: "Align residues by simply matching their names (numbers+insert)\\n(for multiple models of the same structure)"
    fast_a_aln_in_file: "Read FASTA alignment from file <file>"
    ssap_aln_in_file: "Read SSAP alignment from file <file>"
    cora_aln_in_file: "Read CORA alignment from file <file>"
    ssap_scores_in_file: "Glue pairwise alignments together using SSAP scores in file <file>\\nAssumes all .list alignment files in same directory"
    do_the_s_saps: "[=<dir>(=\\\"\\\")]    Do the required SSAPs in directory <dir>; use results as with --ssap-scores-infile\\nUse a suitable temp directory if none is specified"
    align_refining: "(=NO)   Apply <refn> refining to the alignment, one of available values:"
    pdb_in_file: "Read PDB from file <pdbfile> (may be specified multiple times)"
    pdb_s_from_stdin: "Read PDBs from stdin (separated by line: \\\"END   \\\")"
    no: "- Don't refine the alignment"
  }
  output {
    File out_stdout = stdout()
  }
}