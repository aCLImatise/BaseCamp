version 1.0

task Braker.pl {
  input {
    String? show_target_gff
    Boolean? skip_alignment_out
    File? genome
    String? use_existing
  }
  command <<<
    braker.pl \
      ~{if defined(show_target_gff) then ("--showtargetgff " +  '"' + show_target_gff + '"') else ""} \
      ~{true="-skipalignmentout" false="" skip_alignment_out} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(use_existing) then ("--useexisting " +  '"' + use_existing + '"') else ""}
  >>>
  parameter_meta {
    show_target_gff: "... > exfile"
    skip_alignment_out: "... -o gthfile"
    genome: "cores."
    use_existing: "true."
  }
}