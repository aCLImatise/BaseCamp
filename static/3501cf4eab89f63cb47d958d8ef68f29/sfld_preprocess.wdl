version 1.0

task SfldPreprocess {
  input {
    Boolean? hmm
    File? sites
    Boolean? alignments
    Boolean? hmm_dir
  }
  command <<<
    sfld_preprocess \
      ~{if (hmm) then "--hmm" else ""} \
      ~{if (sites) then "--sites" else ""} \
      ~{if (alignments) then "--alignments" else ""} \
      ~{if (hmm_dir) then "--hmm_dir" else ""}
  >>>
  parameter_meta {
    hmm: "| -m FILE    HMM file (input)"
    sites: "| -s FILE    sites file (output)"
    alignments: "| -a FILE    alignments file (input)"
    hmm_dir: "| -d DIR     SFLD HMM directory (overrides $SFLD_LIB_DIR)"
  }
  output {
    File out_stdout = stdout()
    File out_sites = "${in_sites}"
  }
}