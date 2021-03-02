version 1.0

task AMASpyTrim {
  input {
    File? out_format
    File? trim_out
    Float? trim_fraction
    Boolean? retain_only_parsimony_sites
    Boolean? check_align
    Array[String] in_files
    String? in_format
    String? data_type
    String check
  }
  command <<<
    AMAS_py trim \
      ~{check} \
      ~{if defined(out_format) then ("--out-format " +  '"' + out_format + '"') else ""} \
      ~{if defined(trim_out) then ("--trim-out " +  '"' + trim_out + '"') else ""} \
      ~{if defined(trim_fraction) then ("--trim-fraction " +  '"' + trim_fraction + '"') else ""} \
      ~{if (retain_only_parsimony_sites) then "--retain-only-parsimony-sites" else ""} \
      ~{if (check_align) then "--check-align" else ""} \
      ~{if defined(in_files) then ("--in-files " +  '"' + in_files + '"') else ""} \
      ~{if defined(in_format) then ("--in-format " +  '"' + in_format + '"') else ""} \
      ~{if defined(data_type) then ("--data-type " +  '"' + data_type + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amas:1.0--pyh864c0ab_0"
  }
  parameter_meta {
    out_format: "File format for the output alignment. Default: fasta"
    trim_out: "File name for the trimmed alignment when providing a\\nsingle file as input."
    trim_fraction: "Columns in the alignments with occupancy lower than\\nthis value will be removed. Default: 0.6"
    retain_only_parsimony_sites: "Only write parsimony informative columns in trimmed\\nalignment Default: write all columns"
    check_align: "Check if input sequences are aligned. Default: no"
    in_files: "Alignment files to be taken as input. You can specify\\nmultiple files using wildcards (e.g. --in-files\\n*fasta)"
    in_format: "The format of input alignment"
    data_type: "Type of data\\n"
    check: "-c CORES, --cores CORES"
  }
  output {
    File out_stdout = stdout()
    File out_out_format = "${in_out_format}"
  }
}