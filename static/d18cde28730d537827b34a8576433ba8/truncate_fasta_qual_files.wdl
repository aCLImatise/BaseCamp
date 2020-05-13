version 1.0

task TruncateFastaQualFiles.py {
  input {
    String fastFastAFp
    String qualQualFp
    String baseBasePos
  }
  command <<<
    truncate_fasta_qual_files.py \
      ~{if defined(fastFastAFp) then ("--fasta_fp " +  '"' + fastFastAFp + '"') else ""} \
      ~{if defined(qualQualFp) then ("--qual_fp " +  '"' + qualQualFp + '"') else ""} \
      ~{if defined(baseBasePos) then ("--base_pos " +  '"' + baseBasePos + '"') else ""}
  >>>
}