version 1.0

task AmpliconsHistograms.py {
  input {
    String? amplicons_file_path
  }
  command <<<
    amplicons_histograms.py \
      ~{if defined(amplicons_file_path) then ("--amplicons_filepath " +  '"' + amplicons_file_path + '"') else ""}
  >>>
  parameter_meta {
    amplicons_file_path: "Target amplicons files.  Separate multiple files with a colon. [REQUIRED]"
  }
}