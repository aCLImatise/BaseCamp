version 1.0

task AMASpySplit {
  input {
    File? split_by
    Boolean? remove_empty
    File? out_format
    Boolean? check_align
    Array[String] in_files
    String? in_format
    String? data_type
    String check
  }
  command <<<
    AMAS_py split \
      ~{check} \
      ~{if defined(split_by) then ("--split-by " +  '"' + split_by + '"') else ""} \
      ~{if (remove_empty) then "--remove-empty" else ""} \
      ~{if defined(out_format) then ("--out-format " +  '"' + out_format + '"') else ""} \
      ~{if (check_align) then "--check-align" else ""} \
      ~{if defined(in_files) then ("--in-files " +  '"' + in_files + '"') else ""} \
      ~{if defined(in_format) then ("--in-format " +  '"' + in_format + '"') else ""} \
      ~{if defined(data_type) then ("--data-type " +  '"' + data_type + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amas:1.0--pyh864c0ab_0"
  }
  parameter_meta {
    split_by: "File name for partitions to be used for alignment\\nsplitting."
    remove_empty: "Remove taxa with sequences composed of only\\nundetermined characters? Default: Don't remove"
    out_format: "File format for the output alignment. Default: fasta"
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