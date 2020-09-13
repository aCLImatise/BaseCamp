version 1.0

task KtGetLCA {
  input {
    Boolean? streaming_mode_expected
    String? acc_slash_tax_id
  }
  command <<<
    ktGetLCA \
      ~{acc_slash_tax_id} \
      ~{if (streaming_mode_expected) then "-s" else ""}
  >>>
  parameter_meta {
    streaming_mode_expected: "Streaming mode. Each line is expected to be a whitespace-separated list\\nof inputs for a single lowest common ancestor computation. Taxonomy will\\nbe preloaded, allowing for faster computation after a small upfront time.\\n"
    acc_slash_tax_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}