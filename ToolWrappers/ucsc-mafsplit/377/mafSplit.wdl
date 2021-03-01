version 1.0

task MafSplit {
  input {
    Boolean? by_target
    Int? outdir_depth
    Boolean? use_sequence_name
    Boolean? usefull_sequence_name
    Int? use_hashed_name
    String splits_dot_bed
    String out_root
    File var_file
  }
  command <<<
    mafSplit \
      ~{splits_dot_bed} \
      ~{out_root} \
      ~{var_file} \
      ~{if (by_target) then "-byTarget" else ""} \
      ~{if defined(outdir_depth) then ("-outDirDepth " +  '"' + outdir_depth + '"') else ""} \
      ~{if (use_sequence_name) then "-useSequenceName" else ""} \
      ~{if (usefull_sequence_name) then "-useFullSequenceName" else ""} \
      ~{if defined(use_hashed_name) then ("-useHashedName " +  '"' + use_hashed_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    by_target: "Make one file per target sequence.  (splits.bed input\\nis ignored)."
    outdir_depth: "For use only with -byTarget.\\nCreate N levels of output directory under current dir.\\nThis helps prevent NFS problems with a large number of\\nfile in a directory.  Using -outDirDepth=3 would\\nproduce ./1/2/3/outRoot123.maf."
    use_sequence_name: "For use only with -byTarget.\\nInstead of auto-incrementing an integer to determine\\noutput filename, expect each target sequence name to\\nend with a unique number and use that number as the\\ninteger to tack onto outRoot."
    usefull_sequence_name: "For use only with -byTarget.\\nInstead of auto-incrementing an integer to determine\\noutput filename, use the target sequence name\\nto tack onto outRoot."
    use_hashed_name: "For use only with -byTarget.\\nInstead of auto-incrementing an integer or requiring\\na unique number in the sequence name, use a hash\\nfunction on the sequence name to compute an N-bit\\nnumber.  This limits the max #filenames to 2^N and\\nensures that even if different subsets of sequences\\nappear in different pairwise mafs, the split file\\nnames will be consistent (due to hash function).\\nThis option is useful when a \\\"scaffold-based\\\"\\nassembly has more than one sequence name pattern,\\ne.g. both chroms and scaffolds.\\n"
    splits_dot_bed: ""
    out_root: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}