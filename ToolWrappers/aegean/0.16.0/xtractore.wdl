version 1.0

task Xtractore {
  input {
    Boolean? debug
    Boolean? id_file
    File? outfile
    Boolean? type
    Boolean? verbose
    Boolean? width
    Int features_dot_gff_three
    String sequences_dot_fast_a
  }
  command <<<
    xtractore \
      ~{features_dot_gff_three} \
      ~{sequences_dot_fast_a} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (id_file) then "--idfile" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (type) then "--type" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (width) then "--width" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/aegean:0.16.0--hc2cb157_0"
  }
  parameter_meta {
    debug: "print debugging output"
    id_file: ": FILE     file containing a list of feature IDs (1 per line\\nwith no spaces); if provided, only features with\\nIDs in this file will be extracted"
    outfile: ": FILE    file to which output sequences will be written;\\ndefault is terminal (stdout)"
    type: ": STRING     feature type to extract; can be used multiple\\ntimes to extract features of multiple types"
    verbose: "print verbose warning and error messages"
    width: ": INT       width of each line of sequence in the Fasta\\noutput; default is 80; set to 0 for no\\nformatting\\n"
    features_dot_gff_three: ""
    sequences_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}