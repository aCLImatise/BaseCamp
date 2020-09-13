version 1.0

task Extractbiome {
  input {
    Boolean? in
    File? out
    Boolean? biome
    Boolean? samples
    Boolean? sample_threshold_percent
    Boolean? class_threshold_percent
    Boolean? verbose
  }
  command <<<
    extract_biome \
      ~{if (in) then "--in" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (biome) then "--biome" else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if (sample_threshold_percent) then "--sampleThresholdPercent" else ""} \
      ~{if (class_threshold_percent) then "--classThresholdPercent" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    in: "[string]                    Input MEGAN comparison file (.megan file). Mandatory option."
    out: "[string]                   Output file. Default value: biome.megan."
    biome: "[string]                 Biome type to compute. Default value: total. Legal values: total, core, rare"
    samples: "[string(s)]            Samples to use or 'ALL'. Default value(s): ALL."
    sample_threshold_percent: "[number]   Min or max percent of samples that class must be present in to be included in core or rare biome, resp.. Default value: 50.0."
    class_threshold_percent: "[number]   Min percent of sample that reads assigned to class must achieve for class to be considered present in sample. Default value: 0.1."
    verbose: "Echo commandline options and be verbose. Default value: false."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}