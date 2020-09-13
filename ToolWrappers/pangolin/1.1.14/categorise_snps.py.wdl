version 1.0

task CategoriseSnpspy {
  input {
    String? a
    String? l
    String? metadata
    String? snps
    String? representative_seqs_out
    String? defining_snps_out
    String? mask_out
    String? defining_cut_off
    String? represent_cut_off
    Int? num_tax_a
  }
  command <<<
    categorise_snps_py \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(snps) then ("--snps " +  '"' + snps + '"') else ""} \
      ~{if defined(representative_seqs_out) then ("--representative-seqs-out " +  '"' + representative_seqs_out + '"') else ""} \
      ~{if defined(defining_snps_out) then ("--defining-snps-out " +  '"' + defining_snps_out + '"') else ""} \
      ~{if defined(mask_out) then ("--mask-out " +  '"' + mask_out + '"') else ""} \
      ~{if defined(defining_cut_off) then ("--defining-cut-off " +  '"' + defining_cut_off + '"') else ""} \
      ~{if defined(represent_cut_off) then ("--represent-cut-off " +  '"' + represent_cut_off + '"') else ""} \
      ~{if defined(num_tax_a) then ("--num-taxa " +  '"' + num_tax_a + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    l: ""
    metadata: ""
    snps: ""
    representative_seqs_out: ""
    defining_snps_out: ""
    mask_out: ""
    defining_cut_off: ""
    represent_cut_off: ""
    num_tax_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}