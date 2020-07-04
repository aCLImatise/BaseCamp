version 1.0

task MafSplit {
  input {
    String? use_hashed_name
    String splits_dot_bed
    String out_root
    File file
  }
  command <<<
    mafSplit \
      ~{splits_dot_bed} \
      ~{out_root} \
      ~{file} \
      ~{if defined(use_hashed_name) then ("-useHashedName " +  '"' + use_hashed_name + '"') else ""}
  >>>
  parameter_meta {
    use_hashed_name: "For use only with -byTarget. Instead of auto-incrementing an integer or requiring a unique number in the sequence name, use a hash function on the sequence name to compute an N-bit number.  This limits the max #filenames to 2^N and ensures that even if different subsets of sequences appear in different pairwise mafs, the split file names will be consistent (due to hash function). This option is useful when a \"scaffold-based\" assembly has more than one sequence name pattern, e.g. both chroms and scaffolds."
    splits_dot_bed: ""
    out_root: ""
    file: ""
  }
}