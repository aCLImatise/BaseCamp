version 1.0

task HalTreeMutationspy {
  input {
    String? bed_name
    String? root
    Boolean? do_snps
    Boolean? do_parent_deletions
    Int? max_gap
    Boolean? no_sort
    String hal
    String outdir
  }
  command <<<
    halTreeMutations_py \
      ~{hal} \
      ~{outdir} \
      ~{if defined(bed_name) then ("--bedName " +  '"' + bed_name + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if (do_snps) then "--doSnps" else ""} \
      ~{if (do_parent_deletions) then "--doParentDeletions" else ""} \
      ~{if defined(max_gap) then ("--maxGap " +  '"' + max_gap + '"') else ""} \
      ~{if (no_sort) then "--noSort" else ""}
  >>>
  parameter_meta {
    bed_name: "Name function for output bed files where sequence name\\nis specifed as %s (default: %%s.bed)"
    root: "root (default: None)"
    do_snps: ""
    do_parent_deletions: ""
    max_gap: "gap threshold (default: 10)"
    no_sort: ""
    hal: "input hal"
    outdir: "output dir"
  }
  output {
    File out_stdout = stdout()
  }
}