version 1.0

task Emmtyper {
  input {
    Boolean? var_workflow
    File? blast_db
    Boolean? keep
    Int? cluster_distance
    File? output_stream_path
    Boolean? output_format
    Boolean? dust
    Int? percent_identity
    Int? culling_limit
    Int? mismatch
    Int? align_diff
    Int? gap
    File? blast_path
    Int? min_perfect
    Int? min_good
    Int? max_size
    File? is_pcr_path
    File file_dot
    String _primerdb_text
    String primer_dot
    String help_show_message
  }
  command <<<
    emmtyper \
      ~{file_dot} \
      ~{_primerdb_text} \
      ~{primer_dot} \
      ~{help_show_message} \
      ~{if (var_workflow) then "--workflow" else ""} \
      ~{if defined(blast_db) then ("--blast_db " +  '"' + blast_db + '"') else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if defined(cluster_distance) then ("--cluster-distance " +  '"' + cluster_distance + '"') else ""} \
      ~{if defined(output_stream_path) then ("--output " +  '"' + output_stream_path + '"') else ""} \
      ~{if (output_format) then "--output-format" else ""} \
      ~{if (dust) then "--dust" else ""} \
      ~{if defined(percent_identity) then ("--percent-identity " +  '"' + percent_identity + '"') else ""} \
      ~{if defined(culling_limit) then ("--culling-limit " +  '"' + culling_limit + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(align_diff) then ("--align-diff " +  '"' + align_diff + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(blast_path) then ("--blast-path " +  '"' + blast_path + '"') else ""} \
      ~{if defined(min_perfect) then ("--min-perfect " +  '"' + min_perfect + '"') else ""} \
      ~{if defined(min_good) then ("--min-good " +  '"' + min_good + '"') else ""} \
      ~{if defined(max_size) then ("--max-size " +  '"' + max_size + '"') else ""} \
      ~{if defined(is_pcr_path) then ("--ispcr-path " +  '"' + is_pcr_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/emmtyper:0.2.0--py_0"
  }
  parameter_meta {
    var_workflow: "[blast|pcr]      Choose workflow  [default: blast]"
    blast_db: "Path to EMM BLAST DB  [default:\\n/usr/local/lib/python3.7/site-\\npackages/emmtyper/db/emm.fna]"
    keep: "Keep BLAST and isPcr output files.\\n[default: False]"
    cluster_distance: "Distance between cluster of matches to\\nconsider as different clusters.  [default:\\n500]"
    output_stream_path: "Output stream. Path to file for output to a"
    output_format: "[short|verbose|visual]\\nOutput format."
    dust: "[yes|no|level window linker]\\n[BLAST] Filter query sequence with DUST.\\n[default: no]"
    percent_identity: "[BLAST] Minimal percent identity of"
    culling_limit: "[BLAST] Total hits to return in a position.\\n[default: 5]"
    mismatch: "[BLAST] Threshold for number of mismatch to\\nallow in BLAST hit.  [default: 4]"
    align_diff: "[BLAST] Threshold for difference between\\nalignment length and subject length in BLAST\\nhit.  [default: 5]"
    gap: "[BLAST] Threshold gap to allow in BLAST hit.\\n[default: 2]"
    blast_path: "[BLAST] Specify full path to blastn"
    min_perfect: "[isPcr] Minimum size of perfect match at 3'\\nprimer end.  [default: 15]"
    min_good: "[isPcr] Minimum size where there must be 2\\nmatches for each mismatch.  [default: 15]"
    max_size: "[isPcr] Maximum size of PCR product.\\n[default: 2000]"
    is_pcr_path: "[isPcr] Specify full path to isPcr"
    file_dot: "[default: stdout]"
    _primerdb_text: "--primer-db TEXT                [isPcr] PCR primer. Text file with 3"
    primer_dot: "[default:"
    help_show_message: "--help                          Show this message and exit."
  }
  output {
    File out_stdout = stdout()
    File out_output_stream_path = "${in_output_stream_path}"
  }
}