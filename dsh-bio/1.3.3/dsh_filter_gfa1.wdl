version 1.0

task DshFilterGfa1 {
  input {
    Boolean? about
    Boolean? invalid_segment_references
    Boolean? length
    Boolean? fragment_count
    Boolean? km_er_count
    Boolean? mapping_quality
    Boolean? mismatch_count
    Boolean? read_count
    Boolean? script
    Boolean? input_gfa_one_file
    Boolean? output_gfa_one_file
  }
  command <<<
    dsh-filter-gfa1 \
      ~{true="--about" false="" about} \
      ~{true="--invalid-segment-references" false="" invalid_segment_references} \
      ~{true="--length" false="" length} \
      ~{true="--fragment-count" false="" fragment_count} \
      ~{true="--kmer-count" false="" km_er_count} \
      ~{true="--mapping-quality" false="" mapping_quality} \
      ~{true="--mismatch-count" false="" mismatch_count} \
      ~{true="--read-count" false="" read_count} \
      ~{true="--script" false="" script} \
      ~{true="--input-gfa1-file" false="" input_gfa_one_file} \
      ~{true="--output-gfa1-file" false="" output_gfa_one_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    invalid_segment_references: "filter containments, links, and paths that reference missing segments [optional]"
    length: "[class java.lang.Integer]  filter segments by length [optional]"
    fragment_count: "[class java.lang.Integer]  filter segments and links by fragment count [optional]"
    km_er_count: "[class java.lang.Integer]  filter segments and links by k-mer count [optional]"
    mapping_quality: "[class java.lang.Integer]  filter links by mapping quality [optional]"
    mismatch_count: "[class java.lang.Integer]  filter links by mismatch count [optional]"
    read_count: "[class java.lang.Integer]  filter segments and links by read count [optional]"
    script: "[class java.lang.String]  filter by script, eval against r [optional]"
    input_gfa_one_file: "[class java.io.File]  input GFA 1.0 file, default stdin [optional]"
    output_gfa_one_file: "[class java.io.File]  output GFA 1.0 file, default stdout [optional]"
  }
}