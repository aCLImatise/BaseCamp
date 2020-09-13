version 1.0

task TraitarPfam {
  input {
    Boolean? local
    String download
  }
  command <<<
    traitar pfam \
      ~{download} \
      ~{if (local) then "--local" else ""}
  >>>
  parameter_meta {
    local: "the Pfam HMMs are in the above directory with name 'Pfam-A.hmm'"
    download: "download Pfam HMMs into the given download directory and untar\\nand unzip it"
  }
  output {
    File out_stdout = stdout()
  }
}