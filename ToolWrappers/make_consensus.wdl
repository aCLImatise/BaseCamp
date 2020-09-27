version 1.0

task Makeconsensus {
  input {
    Boolean? output_alignments_instead
    File? output_amos_file
    Boolean? input_amos_bank
    Boolean? output_amos_bank
    Boolean? process_contig_messages
    Boolean? input_celera_msg
    Float? set_alignment_error
    File? extra_sequences_align
    Boolean? output_consensus_only
    File? file_containing_list_iids
    Boolean? use_clear_range
    File? file_containing_list_eids
    String? set_minimum_bases
    Boolean? umd_formatusing_reads
    Boolean? output_eid_seqnames
    Boolean? input_umd_format
    Boolean? output_tigr_format
    Boolean? process_unitig_messages
    String? set_verbose_level
    Int? set_alignment_wiggle
    File? expel_poor_aligning
    File tig_file
    String bank_name
  }
  command <<<
    make_consensus \
      ~{tig_file} \
      ~{bank_name} \
      ~{if (output_alignments_instead) then "-a" else ""} \
      ~{if (output_amos_file) then "-A" else ""} \
      ~{if (input_amos_bank) then "-b" else ""} \
      ~{if (output_amos_bank) then "-B" else ""} \
      ~{if (process_contig_messages) then "-c" else ""} \
      ~{if (input_celera_msg) then "-C" else ""} \
      ~{if defined(set_alignment_error) then ("-e " +  '"' + set_alignment_error + '"') else ""} \
      ~{if defined(extra_sequences_align) then ("-E " +  '"' + extra_sequences_align + '"') else ""} \
      ~{if (output_consensus_only) then "-f" else ""} \
      ~{if defined(file_containing_list_iids) then ("-i " +  '"' + file_containing_list_iids + '"') else ""} \
      ~{if (use_clear_range) then "-L" else ""} \
      ~{if defined(file_containing_list_eids) then ("-n " +  '"' + file_containing_list_eids + '"') else ""} \
      ~{if defined(set_minimum_bases) then ("-o " +  '"' + set_minimum_bases + '"') else ""} \
      ~{if (umd_formatusing_reads) then "-P" else ""} \
      ~{if (output_eid_seqnames) then "-s" else ""} \
      ~{if (input_umd_format) then "-S" else ""} \
      ~{if (output_tigr_format) then "-T" else ""} \
      ~{if (process_unitig_messages) then "-u" else ""} \
      ~{if defined(set_verbose_level) then ("-v " +  '"' + set_verbose_level + '"') else ""} \
      ~{if defined(set_alignment_wiggle) then ("-w " +  '"' + set_alignment_wiggle + '"') else ""} \
      ~{if defined(expel_poor_aligning) then ("-x " +  '"' + expel_poor_aligning + '"') else ""}
  >>>
  parameter_meta {
    output_alignments_instead: "Output alignments instead of consensus messages"
    output_amos_file: "Output an AMOS message file"
    input_amos_bank: "Input from AMOS bank"
    output_amos_bank: "Output to an AMOS bank"
    process_contig_messages: "Process contig messages"
    input_celera_msg: "Input is Celera msg format, i.e., a .cgb or .cgw file"
    set_alignment_error: "Set alignment error rate to <x>, e.g.,  -e 0.05  for 5% error"
    extra_sequences_align: "Get extra sequences to align from fasta file <fn>"
    output_consensus_only: "Output consensus only in FASTA format"
    file_containing_list_iids: "File containing list of IIDs to be processed"
    use_clear_range: "Use clear range in layout rather than readbank (-b only)"
    file_containing_list_eids: "File containing list of EIDs (names) to be processed"
    set_minimum_bases: "Set minimum overlap bases to <n>"
    umd_formatusing_reads: "Input is simple contig format, i.e., UMD format\\nusing partial reads"
    output_eid_seqnames: "Output EID seqnames for reads instead of IID ints"
    input_umd_format: "Input is simple contig format, i.e., UMD format"
    output_tigr_format: "Output in TIGR Assembler contig format"
    process_unitig_messages: "Process unitig messages"
    set_verbose_level: "Set verbose level to <n>.  Higher produces more output"
    set_alignment_wiggle: "Set alignment wiggle to <n>. Default is 15. Use a smaller value for Solexa reads (Example: -w 2)"
    expel_poor_aligning: "Expel poor aligning reads from contigs and list them in file <fn>"
    tig_file: ""
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_amos_file = "${in_output_amos_file}"
  }
}