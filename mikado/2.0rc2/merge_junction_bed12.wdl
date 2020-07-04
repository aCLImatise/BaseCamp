version 1.0

task MergeJunctionBed12.py {
  input {
    String? delim
    String? threads
    Boolean? top_hat
    String? output_file_default
    String bed
  }
  command <<<
    merge_junction_bed12.py \
      ~{bed} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--tophat" false="" top_hat} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""}
  >>>
  parameter_meta {
    delim: "Delimiter for merged names. Default: ;"
    threads: "Number of threads to use for multiprocessing. Default: 1"
    top_hat: "Flag. If set, tophat-like junction style is assumed. This means that junctions are defined using the blockSizes rather than thickStart/End. The script will convert the lines to this latter format. By default, the script assumes that the intron start/end are defined using thickStart/End like in portcullis. Mixed-type input files are not supported."
    output_file_default: "Output file. Default: stdout"
    bed: "Input BED files. Use \"-\" for stdin."
  }
}