version 1.0

task Novobarcode {
  input {
    File? specifies_tag_file
    Directory? sets_name_reads
    File? specifies_read_files
    File? specifies_qseq_file
    File? specifies_format_refer
    Boolean? il_q_use
    Boolean? il_q_skip
    Boolean? il_q_qc
    Boolean? q_seq_out
    Int? sets_code_read
    Int? specifies_minimum_difference
    Boolean? enables_adapter_stripping
  }
  command <<<
    novobarcode \
      ~{if defined(specifies_tag_file) then ("-b " +  '"' + specifies_tag_file + '"') else ""} \
      ~{if defined(sets_name_reads) then ("-d " +  '"' + sets_name_reads + '"') else ""} \
      ~{if defined(specifies_read_files) then ("-f " +  '"' + specifies_read_files + '"') else ""} \
      ~{if defined(specifies_qseq_file) then ("-i " +  '"' + specifies_qseq_file + '"') else ""} \
      ~{if defined(specifies_format_refer) then ("-F " +  '"' + specifies_format_refer + '"') else ""} \
      ~{if (il_q_use) then "--ILQ_USE" else ""} \
      ~{if (il_q_skip) then "--ILQ_SKIP" else ""} \
      ~{if (il_q_qc) then "--ILQ_QC" else ""} \
      ~{if (q_seq_out) then "--QSEQ_OUT" else ""} \
      ~{if defined(sets_code_read) then ("-l " +  '"' + sets_code_read + '"') else ""} \
      ~{if defined(specifies_minimum_difference) then ("-t " +  '"' + specifies_minimum_difference + '"') else ""} \
      ~{if (enables_adapter_stripping) then "-a" else ""}
  >>>
  parameter_meta {
    specifies_tag_file: "Specifies the bar code tag file."
    sets_name_reads: "Sets folder name for demux'd reads. Default ./"
    specifies_read_files: "[file2]    Specifies read file(s). Two filenames if paired end."
    specifies_qseq_file: "Specifies the qseq format file for the index tag reads."
    specifies_format_refer: "[option]  Specifies a read file format, refer to manual for full list of options.\\nFor Fastq '_sequence.txt' files from Illumina\\nCASAVA 1.3 to 1.7 use -F ILMFQ.\\nCASAVA 1.8 and later use -F ILM1.8\\nPre 1.3 use -F SLXFQ\\nQSEQ & ILM1.8 files include reads that have been flagged as low quality by the\\nbase caller. Specify how these are processed with the following options:"
    il_q_use: "Ignore QC flag and classify the reads."
    il_q_skip: "Write reads to NC folder"
    il_q_qc: "ditto"
    q_seq_out: "Write qseq format output files if input is qseq. Without this the output may be in fastq format."
    sets_code_read: "Sets bar code read length if different from tag length."
    specifies_minimum_difference: "Specifies a minimum tag alignment score difference between best tag and next best tag.\\nIf difference is less than this reads are written to the catch all file.\\nDefault is 30 * Distance/2"
    enables_adapter_stripping: "[3' adapter sequence]\\nEnables adapter stripping from 3' end of reads before checking for a 3' index tag.\\nDefault adapter sequence is TCGTATGCCGTCTTCTGCTTG."
  }
  output {
    File out_stdout = stdout()
  }
}