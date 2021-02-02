version 1.0

task BpUnflattenSeqpl {
  input {
    Boolean? input_fileinput_file
    String? from
    Int? to
    Boolean? gff
    File? output_fileoutfile_defaults
    Boolean? detail
    Boolean? ethresh_intsets_threshold
    Boolean? no_magic
    Boolean? no_typemap
    String for_dot
    String ascii_tree
    String gene
    String type_mapper
    String bioperl_lat_bioperl_dot_org
  }
  command <<<
    bp_unflatten_seq_pl \
      ~{for_dot} \
      ~{ascii_tree} \
      ~{gene} \
      ~{type_mapper} \
      ~{bioperl_lat_bioperl_dot_org} \
      ~{if (input_fileinput_file) then "-i" else ""} \
      ~{if defined(from) then ("-from " +  '"' + from + '"') else ""} \
      ~{if defined(to) then ("-to " +  '"' + to + '"') else ""} \
      ~{if (gff) then "-gff" else ""} \
      ~{if (output_fileoutfile_defaults) then "-o" else ""} \
      ~{if (detail) then "-detail" else ""} \
      ~{if (ethresh_intsets_threshold) then "-e" else ""} \
      ~{if (no_magic) then "-nomagic" else ""} \
      ~{if (no_typemap) then "-notypemap" else ""}
  >>>
  parameter_meta {
    input_fileinput_file: "|input FILE\\ninput file (can also be specified as last argument)"
    from: "input format (defaults to genbank)\\nprobably doesn't make so much sense to use this for non-flat\\nformats; ie other than embl/genbank"
    to: "output format (defaults to asciitree)\\nshould really be a format that is nested SeqFeature aware; I think\\nthis is only asciitree, chadoxml and gff3"
    gff: "with export to GFF3 format (pre-3 GFFs make no sense with\\nunflattened sequences, as they have no set way of representing\\nfeature graphs)"
    output_fileoutfile_defaults: "|output FILE\\noutfile defaults to STDOUT"
    detail: "show extra detail on features (asciitree mode only)"
    ethresh_intsets_threshold: "|ethresh INT\\nsets the error threshold on unflattening\\nby default this script will throw a wobbly if it encounters weird\\nstuff in the genbank file - raise the error threshold to signal\\nthese to be ignored (and reported on STDERR)"
    no_magic: "suppress use_magic in unflattening (see\\nBio::SeqFeature::Tools::Unflattener"
    no_typemap: "suppress type mapping (see Bio::SeqFeature::Tools::TypeMapper"
    for_dot: "This is most easily illustrated with the default output format,"
    ascii_tree: "An unflattened genbank feature set may look like this (AB077698)\\nSeq: AB077698\\ndatabank_entry                                   1..2701[+]\\ngene\\nmRNA\\nCDS hCHCR-G                                  80..1144[+]\\nexon                                         80..1144[+]\\nfive_prime_UTR                                 1..79[+]\\nlocated_sequence_feature                       137..196[+]\\nlocated_sequence_feature                       239..292[+]\\nlocated_sequence_feature                       617..676[+]\\nlocated_sequence_feature                       725..778[+]\\nthree_prime_UTR                                1145..2659[+]\\npolyA_site                                     1606..1606[+]\\npolyA_site                                     2660..2660[+]"
    gene: "mRNA CG3320-RA                                 \\nCDS CG3320-PA                                53126..54971[-]\\nexon                                         52204..53323[-]\\nexon                                         53404..53631[-]\\nexon                                         53688..53735[-]\\nexon                                         53798..53918[-]\\nexon                                         54949..55287[-]\\nmRNA CG3320-RB\\nCDS CG3320-PB                                53383..54971[-]\\nexon                                         52204..53631[-]\\nexon                                         53688..53735[-]\\nexon                                         53798..53918[-]\\nexon                                         54949..55287[-]"
    type_mapper: "COMMAND LINE ARGUMENTS"
    bioperl_lat_bioperl_dot_org: "- General discussion"
  }
  output {
    File out_stdout = stdout()
    File out_output_fileoutfile_defaults = "${in_output_fileoutfile_defaults}"
  }
}