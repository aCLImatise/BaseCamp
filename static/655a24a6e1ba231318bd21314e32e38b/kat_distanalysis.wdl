version 1.0

task KatDistanalysis {
  input {
    String? output_prefix
    String? format
    String? cns
    String? freq_cut_off
    Int? min_elem
    Boolean? plot
    String? homozygous_peak
    Boolean? haploid
    Boolean? verbose
    String input_should_kat
  }
  command <<<
    kat_distanalysis \
      ~{input_should_kat} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(cns) then ("--cns " +  '"' + cns + '"') else ""} \
      ~{if defined(freq_cut_off) then ("--freq_cutoff " +  '"' + freq_cut_off + '"') else ""} \
      ~{if defined(min_elem) then ("--min_elem " +  '"' + min_elem + '"') else ""} \
      ~{true="--plot" false="" plot} \
      ~{if defined(homozygous_peak) then ("--homozygous_peak " +  '"' + homozygous_peak + '"') else ""} \
      ~{true="--haploid" false="" haploid} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    output_prefix: "If present then plots are sent to files starting with this prefix."
    format: "If present then plots are generated with this extension e.g. {png,svg}."
    cns: "The number of copy numbers to consider in the analysis. Only applicable if input is a spectra-cn matrix file."
    freq_cut_off: "The maximum frequency cutoff point to consider. Analysis will be done up to this frequency."
    min_elem: "Any new distribution that adds less to this number of distinct K-mers will not be added."
    plot: "Plot best cumulative fit for all peaks."
    homozygous_peak: "The approximate kmer frequency for the homozygous peak. Allows us to calculate a more accurate genome size estimate."
    haploid: "If selected then we do not try to detect a heterozygous peak"
    verbose: "Print additional information."
    input_should_kat: "The input should be either a KAT spectra-cn matrix file a KAT GCP matrix file or a KAT histogram file."
  }
}