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
      ~{true="-s" false="" target_size_blocks} \
      ~{true="-x" false="" trimmed_db_reads} \
      ~{true="-a" false="" trimmed_db_contains} \
      ~{true="-f" false="" force_split_occur} \
      ~{true="-af" false="" af}
  >>>
  parameter_meta {
    target_size_blocks: ": Target size of blocks (in Mbp)."
    trimmed_db_reads: ": Trimmed DB has reads >= this threshold."
    trimmed_db_contains: ": Trimmed DB contains all reads from a well (not just longest)."
    force_split_occur: ": Force the split to occur even if already split."
    af: ""
    var_int: ""
  }
}