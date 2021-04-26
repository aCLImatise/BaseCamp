version 1.0

task MergeJunctionBed12py {
  input {
    String? delim
    Int? threads
    Boolean? top_hat
    File? output_file_default
    String bed
  }
  command <<<
    merge_junction_bed12_py \
      ~{bed} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (top_hat) then "--tophat" else ""} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.2.5--py39h70b41aa_0"
  }
  parameter_meta {
    delim: "Delimiter for merged names. Default: ;"
    threads: "Number of threads to use for multiprocessing. Default:\\n1"
    top_hat: "Flag. If set, tophat-like junction style is assumed.\\nThis means that junctions are defined using the\\nblockSizes rather than thickStart/End. The script will\\nconvert the lines to this latter format. By default,\\nthe script assumes that the intron start/end are\\ndefined using thickStart/End like in portcullis.\\nMixed-type input files are not supported."
    output_file_default: "Output file. Default: stdout\\n"
    bed: "Input BED files. Use \\\"-\\\" for stdin."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}