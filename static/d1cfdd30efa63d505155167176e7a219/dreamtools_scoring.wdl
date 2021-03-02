version 1.0

task Dreamtoolsscoring {
  input {
    Int? challenge
    String? sub_challenge
    Boolean? verbose
    Boolean? submission
    Boolean? filename
    File? gold_standard
    Boolean? on_web
    Boolean? info
    Boolean? download_template
    Boolean? download_gold_standard
    String usage
  }
  command <<<
    dreamtools_scoring \
      ~{usage} \
      ~{if defined(challenge) then ("--challenge " +  '"' + challenge + '"') else ""} \
      ~{if defined(sub_challenge) then ("--sub-challenge " +  '"' + sub_challenge + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (submission) then "--submission" else ""} \
      ~{if (filename) then "--filename" else ""} \
      ~{if defined(gold_standard) then ("--gold-standard " +  '"' + gold_standard + '"') else ""} \
      ~{if (on_web) then "--onweb" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (download_template) then "--download-template" else ""} \
      ~{if (download_gold_standard) then "--download-gold-standard" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    challenge: "alias of the challenge (e.g., D8C1 stands fordream8\\nchallenge 1)."
    sub_challenge: "Name of the data files"
    verbose: "verbose option."
    submission: "[FILENAME [FILENAME ...]]\\nsubmission/filename to score."
    filename: "[FILENAME [FILENAME ...]]\\nsubmission/filename to score."
    gold_standard: "a gold standard filename. This may be required in some\\nchallenges e.g. D2C3"
    on_web: "Open synapse project page in a browser"
    info: "Prints general information about the challenge"
    download_template: "Download template. Templates for challenge may be\\ndownloaded using this option. It returns the path to\\ntemplate."
    download_gold_standard: "Download a gold standard, which can be used as a\\nsubmissions as well. It returns the location of the\\nfile."
    usage: ""
  }
  output {
    File out_stdout = stdout()
  }
}