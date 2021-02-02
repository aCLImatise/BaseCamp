version 1.0

task MethylpyAddmethylationlevel {
  input {
    File? output_file
    File? input_tsv_file
    Array[String] samples
    Array[String] mc_type
    Boolean? extra_info
    Int? num_procs
    Int? min_cov
    Int? max_cov
    Int? buffer_line_number
    File? input_no_header
  }
  command <<<
    methylpy add_methylation_level \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(input_tsv_file) then ("--input-tsv-file " +  '"' + input_tsv_file + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(mc_type) then ("--mc-type " +  '"' + mc_type + '"') else ""} \
      ~{if defined(extra_info) then ("--extra-info " +  '"' + extra_info + '"') else ""} \
      ~{if defined(num_procs) then ("--num-procs " +  '"' + num_procs + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(max_cov) then ("--max-cov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(buffer_line_number) then ("--buffer-line-number " +  '"' + buffer_line_number + '"') else ""} \
      ~{if defined(input_no_header) then ("--input-no-header " +  '"' + input_no_header + '"') else ""}
  >>>
  parameter_meta {
    output_file: "ALLC_FILES [ALLC_FILES ...]\\n[--samples SAMPLES [SAMPLES ...]]\\n[--mc-type MC_TYPE [MC_TYPE ...]]\\n[--extra-info EXTRA_INFO]\\n[--num-procs NUM_PROCS]\\n[--min-cov MIN_COV] [--max-cov MAX_COV]\\n[--buffer-line-number BUFFER_LINE_NUMBER]\\n[--input-no-header INPUT_NO_HEADER]"
    input_tsv_file: "A tab-separate file that specifies genomic intervals.\\nThe file contains a header.First three columns are\\nrequired to be chromosome, start and end, which are\\n1-based cooridates. It may contain additional\\ncolumn(s). (default: None)"
    samples: "List of space separated samples matching allc files.\\nBy default sample names will be inferred from allc\\nfilenames (default: None)"
    mc_type: "List of space separated mc nucleotide contexts for\\nwhich you want to look for DMRs. These classifications\\nmay use the wildcards H (indicating anything but a G)\\nand N (indicating any nucleotide). (default: ['CGN'])"
    extra_info: "Boolean to indicate whether to generate two output\\nextra files with the total basecalls and covered sites\\nin each of the regions. (default: False)"
    num_procs: "Number of processors you wish to use to parallelize\\nthis function (default: 1)"
    min_cov: "Minimum coverage for a site to be included (default:\\n0)"
    max_cov: "Maximum coverage for a site to be included. By default\\nthis cutoff is not applied. (default: None)"
    buffer_line_number: "size of buffer for reads to be written on hard drive.\\n(default: 100000)"
    input_no_header: "Indicating whether input tsv file contains a header.\\nIf this is set to True, a header will be automatically\\ngenerated in the output file. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}