version 1.0

task SfldPostprocess {
  input {
    Boolean? no_search
    Boolean? hmmer_path
    Boolean? alignments
    Boolean? dom
    File? hmmer_out
    Boolean? site_info
    Boolean? format
    File? file_output_file
  }
  command <<<
    sfld_postprocess \
      ~{if (no_search) then "--nosearch" else ""} \
      ~{if (hmmer_path) then "--hmmerpath" else ""} \
      ~{if (alignments) then "--alignments" else ""} \
      ~{if (dom) then "--dom" else ""} \
      ~{if (hmmer_out) then "--hmmer-out" else ""} \
      ~{if (site_info) then "--site-info" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (file_output_file) then "--output" else ""}
  >>>
  parameter_meta {
    no_search: "| -S         don't run search if output files exist"
    hmmer_path: "| -p PATH    path to hmm* binaries (overrides $HMMER_PATH)"
    alignments: "| -a         HMMER alignment file"
    dom: "| -d         HMMER domtblout file"
    hmmer_out: "| -O         HMMER output file"
    site_info: "| -s         SFLD reside annotation file"
    format: "| -f FORMAT  output text format [not implemented]"
    file_output_file: "| -o FILE    output file (otherwise STDOUT)"
  }
  output {
    File out_stdout = stdout()
    File out_hmmer_out = "${in_hmmer_out}"
    File out_file_output_file = "${in_file_output_file}"
  }
}