version 1.0

task RtgSdf2sam {
  input {
    String? sdf_containing_sequences
    File? output_filename_extension
    Int? end_id
    File? id_file
    Boolean? names
    Boolean? no_gzip
    String ids
  }
  command <<<
    rtg sdf2sam \
      ~{ids} \
      ~{if defined(sdf_containing_sequences) then ("--input " +  '"' + sdf_containing_sequences + '"') else ""} \
      ~{if defined(output_filename_extension) then ("--output " +  '"' + output_filename_extension + '"') else ""} \
      ~{if defined(end_id) then ("--end-id " +  '"' + end_id + '"') else ""} \
      ~{if defined(id_file) then ("--id-file " +  '"' + id_file + '"') else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rtg-tools:3.12--0"
  }
  parameter_meta {
    sdf_containing_sequences: "SDF containing sequences"
    output_filename_extension: "output filename (extension added if not present). Use '-'\\nto write to standard output"
    end_id: "exclusive upper bound on sequence id"
    id_file: "file containing sequence ids, or sequence names if --names\\nflag is set, one per line"
    names: "interpret supplied sequence as names instead of numeric"
    no_gzip: "do not gzip the output"
    ids: "--start-id=INT inclusive lower bound on sequence id"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_extension = "${in_output_filename_extension}"
  }
}