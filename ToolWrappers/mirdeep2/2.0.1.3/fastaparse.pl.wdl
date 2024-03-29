version 1.0

task Fastaparsepl {
  input {
    Int? only_output_entries
    Boolean? remove_entries_have
    Boolean? output_progress
  }
  command <<<
    fastaparse_pl \
      ~{if defined(only_output_entries) then ("-a " +  '"' + only_output_entries + '"') else ""} \
      ~{if (remove_entries_have) then "-b" else ""} \
      ~{if (output_progress) then "-s" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0"
  }
  parameter_meta {
    only_output_entries: "only output entries where the sequence is minimum int nts long"
    remove_entries_have: "remove all entries that have a sequence that contains letters\\nother than a,c,g,t,u,n,A,C,G,T,U,N."
    output_progress: "output progress"
  }
  output {
    File out_stdout = stdout()
  }
}