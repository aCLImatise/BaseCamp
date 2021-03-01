version 1.0

task Interprophetrb {
  input {
    String? output_prefix
    File? replace_output
    File? explicitly_named_output
    Int? threads
    Float? p_thresh
    Boolean? no_nss
    Boolean? no_nrs
    Boolean? no_nse
    Boolean? no_nsi
    Boolean? no_nsm
    Int file_two_dot_pep_dot_xml
  }
  command <<<
    interprophet_rb \
      ~{file_two_dot_pep_dot_xml} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (replace_output) then "--replace-output" else ""} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(p_thresh) then ("--p-thresh " +  '"' + p_thresh + '"') else ""} \
      ~{if (no_nss) then "--no-nss" else ""} \
      ~{if (no_nrs) then "--no-nrs" else ""} \
      ~{if (no_nse) then "--no-nse" else ""} \
      ~{if (no_nsi) then "--no-nsi" else ""} \
      ~{if (no_nsm) then "--no-nsm" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_prefix: "A string to prepend to the name of output files"
    replace_output: "Dont skip analyses for which the output file already exists [false]"
    explicitly_named_output: "An explicitly named output file."
    threads: "Number of processing threads to use. Set to 0 to autodetect an appropriate value [1]"
    p_thresh: "Probability threshold below which PSMs are discarded [0.05]"
    no_nss: "Don't use NSS (Number of Sibling Searches) in Model [false]"
    no_nrs: "Don't use NRS (Number of Replicate Spectra) in Model [false]"
    no_nse: "Don't use NSE (Number of Sibling Experiments) in Model [false]"
    no_nsi: "Don't use NSE (Number of Sibling Ions) in Model [false]"
    no_nsm: "Don't use NSE (Number of Sibling Modifications) in Model [false]"
    file_two_dot_pep_dot_xml: ""
  }
  output {
    File out_stdout = stdout()
    File out_replace_output = "${in_replace_output}"
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}