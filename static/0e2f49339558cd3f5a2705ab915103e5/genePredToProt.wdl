version 1.0

task GenePredToProt {
  input {
    String? cds_fa
    String? protid_suffix
    String? cds_id_suffix
    Boolean? translates_ele_no
    Boolean? includes_top
    Boolean? star_for_in_frames_tops
    String gene_pred_file
    String genome_seqs
  }
  command <<<
    genePredToProt \
      ~{gene_pred_file} \
      ~{genome_seqs} \
      ~{if defined(cds_fa) then ("-cdsFa " +  '"' + cds_fa + '"') else ""} \
      ~{if defined(protid_suffix) then ("-protIdSuffix " +  '"' + protid_suffix + '"') else ""} \
      ~{if defined(cds_id_suffix) then ("-cdsIdSuffix " +  '"' + cds_id_suffix + '"') else ""} \
      ~{if (translates_ele_no) then "-translateSeleno" else ""} \
      ~{if (includes_top) then "-includeStop" else ""} \
      ~{if (star_for_in_frames_tops) then "-starForInframeStops" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cds_fa: "- output FASTA with CDS that was used to generate protein.\\nThis will not include dropped partial codons."
    protid_suffix: "- add this string to the end of the name for protein FASTA"
    cds_id_suffix: "- add this string to the end of the name for CDS FASTA"
    translates_ele_no: "- assume internal TGA code for selenocysteine and translate to `U'."
    includes_top: "- If the CDS ends with a stop codon, represent it as a `*'"
    star_for_in_frames_tops: "- use `*' instead of `X' for in-frame stop codons.\\nThis will result in selenocysteine's being `*', with only codons\\ncontaining `N' being translated to `X'.  This doesn't include terminal\\nstop\\n"
    gene_pred_file: ""
    genome_seqs: ""
  }
  output {
    File out_stdout = stdout()
  }
}