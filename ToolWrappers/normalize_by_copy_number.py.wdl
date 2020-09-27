version 1.0

task NormalizeByCopyNumberpy {
  input {
    Boolean? verbose
    Int? gg_version
    Int? input_count_fp
    Int? metadata_identifer
    Boolean? load_pre_calc_file_in_biom
    File? input_otu_fp
    File? output_otu_fp
  }
  command <<<
    normalize_by_copy_number_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(gg_version) then ("--gg_version " +  '"' + gg_version + '"') else ""} \
      ~{if defined(input_count_fp) then ("--input_count_fp " +  '"' + input_count_fp + '"') else ""} \
      ~{if defined(metadata_identifer) then ("--metadata_identifer " +  '"' + metadata_identifer + '"') else ""} \
      ~{if (load_pre_calc_file_in_biom) then "--load_precalc_file_in_biom" else ""} \
      ~{if defined(input_otu_fp) then ("--input_otu_fp " +  '"' + input_otu_fp + '"') else ""} \
      ~{if defined(output_otu_fp) then ("--output_otu_fp " +  '"' + output_otu_fp + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    gg_version: "Version of GreenGenes that was used for OTU picking.\\nValid choices are: 13_5, 18may2012 [default: 13_5]"
    input_count_fp: "Precalculated input marker gene copy number\\npredictions on per otu basis in biom format (can be\\ngzipped).Note: using this option overrides\\n--gg_version. [default: none]"
    metadata_identifer: "identifier for copy number entry as observation\\nmetadata [default: CopyNumber]"
    load_pre_calc_file_in_biom: "Instead of loading the precalculated file in tab-\\ndelimited format (with otu ids as row ids and traits\\nas columns) load the data in biom format (with otu as\\nSampleIds and traits as ObservationIds) [default:\\nFalse]"
    input_otu_fp: "the input otu table filepath in biom format [REQUIRED]"
    output_otu_fp: "the output otu table filepath in biom format\\n[REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_otu_fp = "${in_output_otu_fp}"
  }
}