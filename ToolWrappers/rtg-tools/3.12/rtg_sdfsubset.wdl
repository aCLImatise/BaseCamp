version 1.0

task RtgSdfsubset {
  input {
    String? sdf_containing_sequences
    String? output_sdf
    Int? end_id
    File? id_file
    Boolean? names
    String ids
  }
  command <<<
    rtg sdfsubset \
      ~{ids} \
      ~{if defined(sdf_containing_sequences) then ("--input " +  '"' + sdf_containing_sequences + '"') else ""} \
      ~{if defined(output_sdf) then ("--output " +  '"' + output_sdf + '"') else ""} \
      ~{if defined(end_id) then ("--end-id " +  '"' + end_id + '"') else ""} \
      ~{if defined(id_file) then ("--id-file " +  '"' + id_file + '"') else ""} \
      ~{if (names) then "--names" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rtg-tools:3.12--0"
  }
  parameter_meta {
    sdf_containing_sequences: "SDF containing sequences"
    output_sdf: "output SDF"
    end_id: "exclusive upper bound on sequence id"
    id_file: "file containing sequence ids, or sequence names if --names\\nflag is set, one per line"
    names: "interpret supplied sequence as names instead of numeric"
    ids: "--start-id=INT inclusive lower bound on sequence id"
  }
  output {
    File out_stdout = stdout()
  }
}