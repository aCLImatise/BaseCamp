version 1.0

task AMASpyReplicate {
  input {
    Array[String] i
    String? replicateargs__repaln
    File? out_format
    Boolean? check_align
    Array[String] in_files
    String? in_format
    String? data_type
    String check
  }
  command <<<
    AMAS_py replicate \
      ~{check} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(replicateargs__repaln) then ("-r " +  '"' + replicateargs__repaln + '"') else ""} \
      ~{if defined(out_format) then ("--out-format " +  '"' + out_format + '"') else ""} \
      ~{if (check_align) then "--check-align" else ""} \
      ~{if defined(in_files) then ("--in-files " +  '"' + in_files + '"') else ""} \
      ~{if defined(in_format) then ("--in-format " +  '"' + in_format + '"') else ""} \
      ~{if defined(data_type) then ("--data-type " +  '"' + data_type + '"') else ""}
  >>>
  parameter_meta {
    i: "{fasta,phylip,nexus,phylip-int,nexus-int} -d {aa,dna}"
    replicateargs__repaln: "REPLICATE_ARGS, --rep-aln REPLICATE_ARGS REPLICATE_ARGS\\nCreate replicate data sets for phylogenetic jackknife\\n[replicates, no alignments for each replicate]"
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