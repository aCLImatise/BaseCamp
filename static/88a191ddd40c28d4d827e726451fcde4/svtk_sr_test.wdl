version 1.0

task SvtkSrtest {
  input {
    Int? window
    Int? background
    String? samples
    File? index
    File? median_file
    Boolean? log
    String vcf
    String count_file
    String f_out
  }
  command <<<
    svtk sr_test \
      ~{vcf} \
      ~{count_file} \
      ~{f_out} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(background) then ("--background " +  '"' + background + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(median_file) then ("--medianfile " +  '"' + median_file + '"') else ""} \
      ~{if (log) then "--log" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    window: "Window around variant start/end to consider for split\\nread support. [100]"
    background: "Number of background samples to choose for comparison\\nin t-test. [160]"
    samples: "Whitelist of samples to restrict testing to."
    index: "Tabix index of discordant pair file. Required if\\ndiscordant pair file is hosted remotely."
    median_file: "Median coverage statistics for each library\\n(optional). If provided, each sample's split counts\\nwill be normalized accordingly. Same format as RdTest,\\none column per sample."
    log: "Print progress log to stderr."
    vcf: "VCF of variant calls. Standardized to include CHR2,\\nEND, SVTYPE, STRANDS in INFO."
    count_file: "Tabix indexed file of split counts. Columns:\\nchrom,pos,clip,count,sample"
    f_out: "Output table of most significant start/endpositions."
  }
  output {
    File out_stdout = stdout()
  }
}