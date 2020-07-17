version 1.0

task SvtkSrTest {
  input {
    String? window
    String? background
    String? samples
    String? index
    String? median_file
    Boolean? log
    String vcf
    String count_file
    String f_out
  }
  command <<<
    svtk sr-test \
      ~{vcf} \
      ~{count_file} \
      ~{f_out} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(background) then ("--background " +  '"' + background + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(median_file) then ("--medianfile " +  '"' + median_file + '"') else ""} \
      ~{true="--log" false="" log}
  >>>
  parameter_meta {
    window: "Window around variant start/end to consider for split read support. [100]"
    background: "Number of background samples to choose for comparison in t-test. [160]"
    samples: "Whitelist of samples to restrict testing to."
    index: "Tabix index of discordant pair file. Required if discordant pair file is hosted remotely."
    median_file: "Median coverage statistics for each library (optional). If provided, each sample's split counts will be normalized accordingly. Same format as RdTest, one column per sample."
    log: "Print progress log to stderr."
    vcf: "VCF of variant calls. Standardized to include CHR2, END, SVTYPE, STRANDS in INFO."
    count_file: "Tabix indexed file of split counts. Columns: chrom,pos,clip,count,sample"
    f_out: "Output table of most significant start/endpositions."
  }
}