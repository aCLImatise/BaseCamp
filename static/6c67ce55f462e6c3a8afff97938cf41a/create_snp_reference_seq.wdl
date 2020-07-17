version 1.0

task CreateSnpReferenceSeq.py {
  input {
    Boolean? force
    File? snp_list_file
    File? output_file_relative
    String? verbose
    String reference_file
  }
  command <<<
    create_snp_reference_seq.py \
      ~{reference_file} \
      ~{true="--force" false="" force} \
      ~{if defined(snp_list_file) then ("--snpListFile " +  '"' + snp_list_file + '"') else ""} \
      ~{if defined(output_file_relative) then ("--output " +  '"' + output_file_relative + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result file already exists and is newer than inputs (default: False)"
    snp_list_file: "Relative or absolute path to the SNP list file (default: snplist.txt)"
    output_file_relative: "Output file. Relative or absolute path to the SNP reference sequence file (default: referenceSNP.fasta)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    reference_file: "Relative or absolute path to the reference bases file in fasta format"
  }
}