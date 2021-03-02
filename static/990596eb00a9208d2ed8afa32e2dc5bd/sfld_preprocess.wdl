version 1.0

task SfldPreprocess {
  input {
    File? hmm
    File? sites
    File? alignments
    Directory? hmm_dir
  }
  command <<<
    sfld_preprocess \
      ~{if defined(hmm) then ("--hmm " +  '"' + hmm + '"') else ""} \
      ~{if defined(sites) then ("--sites " +  '"' + sites + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(hmm_dir) then ("--hmm_dir " +  '"' + hmm_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hmm: "HMM file (input)"
    sites: "sites file (output)"
    alignments: "alignments file (input)"
    hmm_dir: "SFLD HMM directory (overrides $SFLD_LIB_DIR)"
  }
  output {
    File out_stdout = stdout()
    File out_sites = "${in_sites}"
  }
}