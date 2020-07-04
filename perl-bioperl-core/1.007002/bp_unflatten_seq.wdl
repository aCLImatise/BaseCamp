version 1.0

task BpUnflattenSeq.pl {
  input {
    Boolean? input_file_input
    String? from
    String? to
    Boolean? gff
    Boolean? output_file_outfile
    Boolean? detail
    Boolean? ethresh_int_sets
    Boolean? no_magic
    Boolean? no_typemap
  }
  command <<<
    bp_unflatten_seq.pl \
      ~{true="-i" false="" input_file_input} \
      ~{if defined(from) then ("-from " +  '"' + from + '"') else ""} \
      ~{if defined(to) then ("-to " +  '"' + to + '"') else ""} \
      ~{true="-gff" false="" gff} \
      ~{true="-o" false="" output_file_outfile} \
      ~{true="-detail" false="" detail} \
      ~{true="-e" false="" ethresh_int_sets} \
      ~{true="-nomagic" false="" no_magic} \
      ~{true="-notypemap" false="" no_typemap}
  >>>
  parameter_meta {
    input_file_input: "|input FILE input file (can also be specified as last argument)"
    from: "input format (defaults to genbank) probably doesn't make so much sense to use this for non-flat formats; ie other than embl/genbank"
    to: "output format (defaults to asciitree) should really be a format that is nested SeqFeature aware; I think this is only asciitree, chadoxml and gff3"
    gff: "with export to GFF3 format (pre-3 GFFs make no sense with unflattened sequences, as they have no set way of representing feature graphs)"
    output_file_outfile: "|output FILE outfile defaults to STDOUT"
    detail: "show extra detail on features (asciitree mode only)"
    ethresh_int_sets: "|ethresh INT sets the error threshold on unflattening by default this script will throw a wobbly if it encounters weird stuff in the genbank file - raise the error threshold to signal these to be ignored (and reported on STDERR)"
    no_magic: "suppress use_magic in unflattening (see Bio::SeqFeature::Tools::Unflattener"
    no_typemap: "suppress type mapping (see Bio::SeqFeature::Tools::TypeMapper"
  }
}