version 1.0

task SfldPostprocess {
  input {
    Boolean? no_search
    File? hmmer_path
    Boolean? alignments
    Boolean? dom
    File? hmmer_out
    Boolean? site_info
    String? format
    File? output_file_otherwise
  }
  command <<<
    sfld_postprocess \
      ~{if (no_search) then "--nosearch" else ""} \
      ~{if defined(hmmer_path) then ("--hmmerpath " +  '"' + hmmer_path + '"') else ""} \
      ~{if (alignments) then "--alignments" else ""} \
      ~{if (dom) then "--dom" else ""} \
      ~{if (hmmer_out) then "--hmmer-out" else ""} \
      ~{if (site_info) then "--site-info" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(output_file_otherwise) then ("--output " +  '"' + output_file_otherwise + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_search: "don't run search if output files exist"
    hmmer_path: "path to hmm* binaries (overrides $HMMER_PATH)"
    alignments: "HMMER alignment file"
    dom: "HMMER domtblout file"
    hmmer_out: "HMMER output file"
    site_info: "SFLD reside annotation file"
    format: "output text format [not implemented]"
    output_file_otherwise: "output file (otherwise STDOUT)"
  }
  output {
    File out_stdout = stdout()
    File out_hmmer_out = "${in_hmmer_out}"
    File out_output_file_otherwise = "${in_output_file_otherwise}"
  }
}