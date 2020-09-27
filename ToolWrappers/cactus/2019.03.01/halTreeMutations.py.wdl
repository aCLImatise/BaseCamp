version 1.0

task HalTreeMutationspy {
  input {
    Boolean? do_snps
    String? root
    String? bed_name
    String hal
    String outdir
  }
  command <<<
    halTreeMutations_py \
      ~{hal} \
      ~{outdir} \
      ~{if (do_snps) then "--doSnps" else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(bed_name) then ("--bedName " +  '"' + bed_name + '"') else ""}
  >>>
  parameter_meta {
    do_snps: ""
    root: ""
    bed_name: ""
    hal: "input hal"
    outdir: "output dir"
  }
  output {
    File out_stdout = stdout()
  }
}