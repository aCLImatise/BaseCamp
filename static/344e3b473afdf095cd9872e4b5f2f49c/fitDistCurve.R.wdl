version 1.0

task FitDistCurveR {
  input {
    File? opts
    String? inputs
    Int? summary_input
    Int? threshold
    Int? subsets
    Int? large_binsize
    Int? bin_number
    Int? half_number
  }
  command <<<
    fitDistCurve_R \
      ~{if defined(opts) then ("--opts " +  '"' + opts + '"') else ""} \
      ~{if defined(inputs) then ("--inputs " +  '"' + inputs + '"') else ""} \
      ~{if defined(summary_input) then ("--summaryInput " +  '"' + summary_input + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(subsets) then ("--subsets " +  '"' + subsets + '"') else ""} \
      ~{if defined(large_binsize) then ("--largeBinSize " +  '"' + large_binsize + '"') else ""} \
      ~{if defined(bin_number) then ("--binNumber " +  '"' + bin_number + '"') else ""} \
      ~{if defined(half_number) then ("--halfNumber " +  '"' + half_number + '"') else ""}
  >>>
  parameter_meta {
    opts: "RDS file containing argument values"
    inputs: "Comma-separated list: locations of saved CHiCAGO objects (either .Rda or .Rds)."
    summary_input: "An .Rda file of summary information -- the max P-val for each putative interaction, and the location of the .rmap file. This file will be generated if it wasn't provided."
    threshold: "Threshold applied to -log(p) values (NB: not the CHiCAGO score!). [default: -10]"
    subsets: "Number of subsets to partition the data into. Parameters estimated on subsets, median taken. [default: 5]"
    large_binsize: "Largest bin size to consider [default: 1000000]"
    bin_number: "Number of large bins [default: 16]"
    half_number: "First bin is subdivided into halves - the number of times to do this [default: 5]"
  }
  output {
    File out_stdout = stdout()
  }
}