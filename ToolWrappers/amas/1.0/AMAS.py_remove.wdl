version 1.0

task AMASpyRemove {
  input {
    Array[String] tax_a_to_remove
    File? out_format
    File? out_prefix
    Boolean? check_align
    Array[String] in_files
    String? in_format
    String? data_type
    String check
  }
  command <<<
    AMAS_py remove \
      ~{check} \
      ~{if defined(tax_a_to_remove) then ("--taxa-to-remove " +  '"' + tax_a_to_remove + '"') else ""} \
      ~{if defined(out_format) then ("--out-format " +  '"' + out_format + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if (check_align) then "--check-align" else ""} \
      ~{if defined(in_files) then ("--in-files " +  '"' + in_files + '"') else ""} \
      ~{if defined(in_format) then ("--in-format " +  '"' + in_format + '"') else ""} \
      ~{if defined(data_type) then ("--data-type " +  '"' + data_type + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amas:1.0--pyh864c0ab_0"
  }
  parameter_meta {
    tax_a_to_remove: "Taxon/sequence names to be removed."
    out_format: "File format for the output alignment. Default: fasta"
    out_prefix: "File name prefix for the concatenated alignment.\\nDefault: 'reduced_'"
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