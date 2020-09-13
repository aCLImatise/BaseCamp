version 1.0

task BpMaskBySearchpl {
  input {
    String? format
    String? f_slash_format
    String? sf_slash_s_format
    Boolean? hard_mask
    File? oslash_out_slash
    String? t_slash_type
    String information
  }
  command <<<
    bp_mask_by_search_pl \
      ~{information} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(f_slash_format) then ("-f/--format " +  '"' + f_slash_format + '"') else ""} \
      ~{if defined(sf_slash_s_format) then ("-sf/--sformat " +  '"' + sf_slash_s_format + '"') else ""} \
      ~{if (hard_mask) then "--hardmask" else ""} \
      ~{if defined(oslash_out_slash) then ("-o/--out/ " +  '"' + oslash_out_slash + '"') else ""} \
      ~{if defined(t_slash_type) then ("-t/--type " +  '"' + t_slash_type + '"') else ""}
  >>>
  parameter_meta {
    format: "or you can just say -f fasta"
    f_slash_format: "Search report format (fasta,blast,axt,hmmer,etc)"
    sf_slash_s_format: "Sequence format (fasta,genbank,embl,swissprot)"
    hard_mask: "(booelean) Hard mask the sequence with the maskchar [default"
    oslash_out_slash: "Output file to save the masked sequence to."
    t_slash_type: "Alignment seq type you want to mask, the 'hit' or the"
    information: "AUTHOR - Jason Stajich"
  }
  output {
    File out_stdout = stdout()
    File out_oslash_out_slash = "${in_oslash_out_slash}"
  }
}