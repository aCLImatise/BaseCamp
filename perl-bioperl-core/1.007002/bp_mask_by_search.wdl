version 1.0

task BpMaskBySearch.pl {
  input {
    String? f_slash_format
    String? sf_slash_s_format
  }
  command <<<
    bp_mask_by_search.pl \
      ~{if defined(f_slash_format) then ("-f/--format " +  '"' + f_slash_format + '"') else ""} \
      ~{if defined(sf_slash_s_format) then ("-sf/--sformat " +  '"' + sf_slash_s_format + '"') else ""}
  >>>
  parameter_meta {
    f_slash_format: "Search report format (fasta,blast,axt,hmmer,etc)"
    sf_slash_s_format: "Sequence format (fasta,genbank,embl,swissprot) --hardmask"
  }
}