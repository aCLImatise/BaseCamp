version 1.0

task AmpliconsHistograms.py {
  input {
    String ampliconsAmpliconsFilePath
  }
  command <<<
    amplicons_histograms.py \
      ~{if defined(ampliconsAmpliconsFilePath) then ("--amplicons_filepath " +  '"' + ampliconsAmpliconsFilePath + '"') else ""}
  >>>
}