version 1.0

task Mergepartitionspy {
  input {
    Boolean? info
    Int? k_size
    Boolean? keep_subsets
    File? force
  }
  command <<<
    merge_partitions_py \
      ~{if (info) then "--info" else ""} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{if (keep_subsets) then "--keep-subsets" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    info: "print citation information"
    k_size: "k-mer size (default: 32) (default: 32)"
    keep_subsets: "Keep individual subsets (default: False) (default:\\nTrue)"
    force: "Overwrite output file if it exists (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}