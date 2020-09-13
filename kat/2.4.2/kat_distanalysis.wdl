version 1.0

task KatDistanalysis {
  input {
    String? output_prefix
    String? format
    Int? cns
    String? freq_cut_off
    Int? min_elem
    Boolean? plot
    Int? homozygous_peak
    Boolean? haploid
    Boolean? verbose
  }
  command <<<
    kat_distanalysis \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(cns) then ("--cns " +  '"' + cns + '"') else ""} \
      ~{if defined(freq_cut_off) then ("--freq_cutoff " +  '"' + freq_cut_off + '"') else ""} \
      ~{if defined(min_elem) then ("--min_elem " +  '"' + min_elem + '"') else ""} \
      ~{if (plot) then "--plot" else ""} \
      ~{if defined(homozygous_peak) then ("--homozygous_peak " +  '"' + homozygous_peak + '"') else ""} \
      ~{if (haploid) then "--haploid" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    output_prefix: "If present then plots are sent to files starting with\\nthis prefix."
    format: "If present then plots are generated with this\\nextension e.g. {png,svg}."
    cns: "The number of copy numbers to consider in the\\nanalysis. Only applicable if input is a spectra-cn\\nmatrix file."
    freq_cut_off: "The maximum frequency cutoff point to consider.\\nAnalysis will be done up to this frequency."
    min_elem: "Any new distribution that adds less to this number of\\ndistinct K-mers will not be added."
    plot: "Plot best cumulative fit for all peaks."
    homozygous_peak: "The approximate kmer frequency for the homozygous\\npeak. Allows us to calculate a more accurate genome\\nsize estimate."
    haploid: "If selected then we do not try to detect a\\nheterozygous peak"
    verbose: "Print additional information."
  }
  output {
    File out_stdout = stdout()
  }
}