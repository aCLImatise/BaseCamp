version 1.0

task ChiraCollapse.py {
  input {
    Boolean? _fastq_input
    Boolean? _fasta_output
    String? umi_len
  }
  command <<<
    chira_collapse.py \
      ~{true="-i" false="" _fastq_input} \
      ~{true="-o" false="" _fasta_output} \
      ~{if defined(umi_len) then ("--umi_len " +  '"' + umi_len + '"') else ""}
  >>>
  parameter_meta {
    _fastq_input: ", --fastq          Input fastq file (default: None)"
    _fasta_output: ", --fasta          Output fasta file (default: None)"
    umi_len: "Length of the UMI, if present.It is trimmed from the 5' end of each read and appended to the tag id (default: 0)"
  }
}