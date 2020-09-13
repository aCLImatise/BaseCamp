version 1.0

task Overmerry {
  input {
    File? path_to_gkpstore
    Int? mer_size_bases
    Int? compression_level_homopolymer
    String? ignore_mers_occuring
    File? mc
    Int? number_compute_threads
    String? tb
    String? te
    String? qb
    String? qe
    Boolean? entertain_user_progress
    String? output_written_here
    String? opts
  }
  command <<<
    overmerry \
      ~{opts} \
      ~{if defined(path_to_gkpstore) then ("-g " +  '"' + path_to_gkpstore + '"') else ""} \
      ~{if defined(mer_size_bases) then ("-m " +  '"' + mer_size_bases + '"') else ""} \
      ~{if defined(compression_level_homopolymer) then ("-c " +  '"' + compression_level_homopolymer + '"') else ""} \
      ~{if defined(ignore_mers_occuring) then ("-T " +  '"' + ignore_mers_occuring + '"') else ""} \
      ~{if defined(mc) then ("-mc " +  '"' + mc + '"') else ""} \
      ~{if defined(number_compute_threads) then ("-t " +  '"' + number_compute_threads + '"') else ""} \
      ~{if defined(tb) then ("-tb " +  '"' + tb + '"') else ""} \
      ~{if defined(te) then ("-te " +  '"' + te + '"') else ""} \
      ~{if defined(qb) then ("-qb " +  '"' + qb + '"') else ""} \
      ~{if defined(qe) then ("-qe " +  '"' + qe + '"') else ""} \
      ~{if (entertain_user_progress) then "-v" else ""} \
      ~{if defined(output_written_here) then ("-o " +  '"' + output_written_here + '"') else ""}
  >>>
  parameter_meta {
    path_to_gkpstore: "path to the gkpStore"
    mer_size_bases: "mer size in bases"
    compression_level_homopolymer: "compression level; homopolymer runs longer than this length\\nare compressed to exactly this length"
    ignore_mers_occuring: "ignore mers occuring more than 'threshold' times"
    mc: "file of mercounts"
    number_compute_threads: "number of compute threads"
    tb: "hash table fragment IID range"
    te: "hash table fragment IID range\\nfragments with IID x, m <= x < n, are used for the hash table"
    qb: "query fragment IID range (must be >= -tb)"
    qe: "query fragment IID range\\nfragments with IID y, M <= y < N, are used for the queries"
    entertain_user_progress: "entertain the user with progress reports"
    output_written_here: "output written here"
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}