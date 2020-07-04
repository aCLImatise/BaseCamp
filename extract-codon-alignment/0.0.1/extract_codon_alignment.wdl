version 1.0

task ExtractCodonAlignment {
  input {
    File? aligned_cds
    String? aln_format
    String? codon_poses
    File? out_aln
  }
  command <<<
    extract_codon_alignment \
      ~{if defined(aligned_cds) then ("--alignedCDS " +  '"' + aligned_cds + '"') else ""} \
      ~{if defined(aln_format) then ("--aln_format " +  '"' + aln_format + '"') else ""} \
      ~{if defined(codon_poses) then ("--codonPoses " +  '"' + codon_poses + '"') else ""} \
      ~{if defined(out_aln) then ("--outAln " +  '"' + out_aln + '"') else ""}
  >>>
  parameter_meta {
    aligned_cds: "The CDS alignment."
    aln_format: "the file format for the CDS alignment. Anything accepted by BioPython is fine [fasta]"
    codon_poses: "Codon position(s) to be extracted [12]"
    out_aln: "output file name"
  }
}