version 1.0

task HalTreeMutations.py {
  input {
    String? bed_name
    String? root
    Boolean? do_snps
    String hal
    String outdir
  }
  command <<<
    halTreeMutations.py \
      ~{hal} \
      ~{outdir} \
      ~{if defined(bed_name) then ("--bedName " +  '"' + bed_name + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{true="--doSnps" false="" do_snps}
  >>>
  parameter_meta {
    bed_name: ""
    root: ""
    do_snps: ""
    hal: "input hal"
    outdir: "output dir"
  }
}