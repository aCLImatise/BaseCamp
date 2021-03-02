version 1.0

task BaseCallingMatrixCalculator {
  input {
    File? fasta_file_m
    File? snp_positions_mfilenamem
    Int? accepted_mapq_mmm
    Int? length_reads_m
    Int? prefix_mmatrixmm
    File? list_file_m
    Int? qascii_sam_files
    File? chrid_match_results
  }
  command <<<
    baseCalling_Matrix_calculator \
      ~{if defined(fasta_file_m) then ("-r " +  '"' + fasta_file_m + '"') else ""} \
      ~{if defined(snp_positions_mfilenamem) then ("-s " +  '"' + snp_positions_mfilenamem + '"') else ""} \
      ~{if defined(accepted_mapq_mmm) then ("-m " +  '"' + accepted_mapq_mmm + '"') else ""} \
      ~{if defined(length_reads_m) then ("-l " +  '"' + length_reads_m + '"') else ""} \
      ~{if defined(prefix_mmatrixmm) then ("-o " +  '"' + prefix_mmatrixmm + '"') else ""} \
      ~{if defined(list_file_m) then ("-c " +  '"' + list_file_m + '"') else ""} \
      ~{if defined(qascii_sam_files) then ("-q " +  '"' + qascii_sam_files + '"') else ""} \
      ~{if defined(chrid_match_results) then ("-t " +  '"' + chrid_match_results + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fasta_file_m: "FASTA file [[0;0m.{gz,bz2} is OK[32;1m][32;1m"
    snp_positions_mfilenamem: "SNP positions from ([0;1m<filename>[32;1m) in format /^ChrID\\tPos/. VCF file with only SNP is OK.[32;1m"
    accepted_mapq_mmm: "accepted MAPQ ([0;1m60[32;1m)[32;1m"
    length_reads_m: "length of reads ([0;1mint[32;1m) [[0;0mOptional. Specify to override auto detected value.[32;1m][32;1m"
    prefix_mmatrixmm: "prefix ([0;1m./matrix[32;1m).{count,ratio}.matrix and .{stat,info}[32;1m"
    list_file_m: "list file [[0;0mto specify a subset of chromosomes, one per line[32;1m][32;1m"
    qascii_sam_files: "Qascii=64 for sam files instead of 33[32;1m"
    chrid_match_results: "ChrID in ref fasta file to match alignment results ([0;1mnone[32;1m) [[0;0muse RegEx for s/$ARG//;[32;1m][32;1m"
  }
  output {
    File out_stdout = stdout()
  }
}