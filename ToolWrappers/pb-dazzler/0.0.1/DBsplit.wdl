version 1.0

task DBsplit {
  input {
    Boolean? target_size_blocks
    Boolean? trimmed_db_reads
    Boolean? trimmed_db_contains
    Boolean? force_split_occur
    Boolean? af
    Int? var_int
  }
  command <<<
    DBsplit \
      ~{var_int} \
      ~{if (target_size_blocks) then "-s" else ""} \
      ~{if (trimmed_db_reads) then "-x" else ""} \
      ~{if (trimmed_db_contains) then "-a" else ""} \
      ~{if (force_split_occur) then "-f" else ""} \
      ~{if (af) then "-af" else ""}
  >>>
  parameter_meta {
    target_size_blocks: ": Target size of blocks (in Mbp)."
    trimmed_db_reads: ": Trimmed DB has reads >= this threshold."
    trimmed_db_contains: ": Trimmed DB contains all reads from a well (not just longest)."
    force_split_occur: ": Force the split to occur even if already split."
    af: ""
    var_int: ""
  }
  output {
    File out_stdout = stdout()
  }
}