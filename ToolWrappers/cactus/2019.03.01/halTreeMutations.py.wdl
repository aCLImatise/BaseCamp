version 1.0

task HalTreeMutationspy {
  input {
    String? bed_name
    String? root
    Int? do_parent_deletions
    String hal
    String outdir
  }
  command <<<
    halTreeMutations_py \
      ~{hal} \
      ~{outdir} \
      ~{if defined(bed_name) then ("--bedName " +  '"' + bed_name + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(do_parent_deletions) then ("--doParentDeletions " +  '"' + do_parent_deletions + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed_name: "Name function for output bed files where sequence name\\nis specifed as %s (default: %%s.bed)"
    root: "root (default: None)"
    do_parent_deletions: "gap threshold (default: 10)"
    hal: "input hal"
    outdir: "output dir"
  }
  output {
    File out_stdout = stdout()
  }
}