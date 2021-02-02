version 1.0

task ChiraCollapsepy {
  input {
    Boolean? _fastq_input
    File? _fasta_default
    Int? umi_len
  }
  command <<<
    chira_collapse_py \
      ~{if (_fastq_input) then "-i" else ""} \
      ~{if (_fasta_default) then "-o" else ""} \
      ~{if defined(umi_len) then ("--umi_len " +  '"' + umi_len + '"') else ""}
  >>>
  parameter_meta {
    _fastq_input: ", --fastq          Input fastq file (default: None)"
    _fasta_default: ", --fasta          Output fasta file (default: None)"
    umi_len: "Length of the UMI, if present.It is trimmed from the\\n5' end of each read and appended to the tag id\\n(default: 0)"
  }
  output {
    File out_stdout = stdout()
    File out__fasta_default = "${in__fasta_default}"
  }
}