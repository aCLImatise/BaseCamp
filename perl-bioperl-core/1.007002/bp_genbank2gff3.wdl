version 1.0

task BpGenbank2gff3.pl {
  input {
    Boolean? format
    Boolean? gff_version
    Boolean? quiet
    Boolean? type_source
    File filename
  }
  command <<<
    bp_genbank2gff3.pl \
      ~{filename} \
      ~{true="--format" false="" format} \
      ~{true="--GFF_VERSION" false="" gff_version} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--typesource" false="" type_source}
  >>>
  parameter_meta {
    format: "-f  Input format (SeqIO types): GenBank, Swiss or Uniprot, EMBL work (GenBank is default)"
    gff_version: "3 is default, 2 and 2.5 and other Bio::Tools::GFF versions available"
    quiet: "don't talk about what is being processed "
    type_source: "SO sequence type for source (e.g. chromosome; region; contig)"
    filename: ""
  }
}