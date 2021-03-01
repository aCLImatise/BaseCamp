version 1.0

task ChiraCollapsepy {
  input {
    Boolean? fast_q
    File? fast_a
    Int? umi_len
  }
  command <<<
    chira_collapse_py \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(umi_len) then ("--umi_len " +  '"' + umi_len + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "Input fastq file (default: None)"
    fast_a: "Output fasta file (default: None)"
    umi_len: "Length of the UMI, if present.It is trimmed from the\\n5' end of each read and appended to the tag id\\n(default: 0)"
  }
  output {
    File out_stdout = stdout()
    File out_fast_a = "${in_fast_a}"
  }
}