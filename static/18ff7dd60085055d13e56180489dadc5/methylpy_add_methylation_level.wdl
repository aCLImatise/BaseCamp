version 1.0

task MethylpyAddMethylationLevel {
  input {
    String? input_tsv_file
    String? output_file
    Array[String] all_c_files
    Array[String] samples
    Array[String] mc_type
    String? extra_info
    String? num_procs
    Int? min_cov
    Int? max_cov
    String? buffer_line_number
    String? input_no_header
  }
  command <<<
    methylpy add-methylation-level \
      ~{if defined(input_tsv_file) then ("--input-tsv-file " +  '"' + input_tsv_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(all_c_files) then ("--allc-files " +  '"' + all_c_files + '"') else ""} \
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
    input_tsv_file: "A tab-separate file that specifies genomic intervals. The file contains a header.First three columns are required to be chromosome, start and end, which are 1-based cooridates. It may contain additional column(s). (default: None)"
    output_file: "Name of output file (default: None)"
    all_c_files: "List of allc files. (default: None)"
    samples: "List of space separated samples matching allc files. By default sample names will be inferred from allc filenames (default: None)"
    mc_type: "List of space separated mc nucleotide contexts for which you want to look for DMRs. These classifications may use the wildcards H (indicating anything but a G) and N (indicating any nucleotide). (default: ['CGN'])"
    extra_info: "Boolean to indicate whether to generate two output extra files with the total basecalls and covered sites in each of the regions. (default: False)"
    num_procs: "Number of processors you wish to use to parallelize this function (default: 1)"
    min_cov: "Minimum coverage for a site to be included (default: 0)"
    max_cov: "Maximum coverage for a site to be included. By default this cutoff is not applied. (default: None)"
    buffer_line_number: "size of buffer for reads to be written on hard drive. (default: 100000)"
    input_no_header: "Indicating whether input tsv file contains a header. If this is set to True, a header will be automatically generated in the output file. (default: False)"
  }
}