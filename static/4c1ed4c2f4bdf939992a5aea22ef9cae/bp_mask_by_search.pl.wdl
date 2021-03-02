version 1.0

task BpMaskBySearchpl {
  input {
    String? s_format
    Boolean? hard_mask
    File? outfile
    String? type
    String information
  }
  command <<<
    bp_mask_by_search_pl \
      ~{information} \
      ~{if defined(s_format) then ("--sformat " +  '"' + s_format + '"') else ""} \
      ~{if (hard_mask) then "--hardmask" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    s_format: "Sequence format (fasta,genbank,embl,swissprot)"
    hard_mask: "(booelean) Hard mask the sequence with the maskchar [default"
    outfile: "Output file to save the masked sequence to."
    type: "Alignment seq type you want to mask, the 'hit' or the"
    information: "AUTHOR - Jason Stajich"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}