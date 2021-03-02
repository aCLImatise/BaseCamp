version 1.0

task FrameBotRdmselect {
  input {
    Int? num_selection
    String? exclude_samples
    String rdm_select_sample_mapping
    String sample_mapping
    String outfile
  }
  command <<<
    FrameBot rdmselect \
      ~{rdm_select_sample_mapping} \
      ~{sample_mapping} \
      ~{outfile} \
      ~{if defined(num_selection) then ("--num-selection " +  '"' + num_selection + '"') else ""} \
      ~{if defined(exclude_samples) then ("--exclude-samples " +  '"' + exclude_samples + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    num_selection: "number of sequence IDs for each sample. Default is the smallest sample size"
    exclude_samples: "list of sample names to be excluded from selection"
    rdm_select_sample_mapping: ""
    sample_mapping: ""
    outfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}