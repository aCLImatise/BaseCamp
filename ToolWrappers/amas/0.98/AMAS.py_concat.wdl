version 1.0

task AMASpyConcat {
  input {
    File? concat_part
    File? concat_out
    File? out_format
    Boolean? check_align
    Array[String] in_files
    String? in_format
    String? data_type
    String check
  }
  command <<<
    AMAS_py concat \
      ~{check} \
      ~{if defined(concat_part) then ("--concat-part " +  '"' + concat_part + '"') else ""} \
      ~{if defined(concat_out) then ("--concat-out " +  '"' + concat_out + '"') else ""} \
      ~{if defined(out_format) then ("--out-format " +  '"' + out_format + '"') else ""} \
      ~{if (check_align) then "--check-align" else ""} \
      ~{if defined(in_files) then ("--in-files " +  '"' + in_files + '"') else ""} \
      ~{if defined(in_format) then ("--in-format " +  '"' + in_format + '"') else ""} \
      ~{if defined(data_type) then ("--data-type " +  '"' + data_type + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    concat_part: "File name for th0e concatenated alignment partitions.\\nDefault: 'partitions.txt'"
    concat_out: "File name for the concatenated alignment. Default:\\n'concatenated.out'"
    out_format: "File format for the output alignment. Default: fasta"
    check_align: "Check if input sequences are aligned. Default: no"
    in_files: "Alignment files to be taken as input. You can specify\\nmultiple files using wildcards (e.g. --in-files\\n*fasta)"
    in_format: "The format of input alignment"
    data_type: "Type of data\\n"
    check: "-c CORES, --cores CORES"
  }
  output {
    File out_stdout = stdout()
    File out_concat_out = "${in_concat_out}"
    File out_out_format = "${in_out_format}"
  }
}