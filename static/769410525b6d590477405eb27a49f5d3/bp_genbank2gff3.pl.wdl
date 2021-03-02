version 1.0

task BpGenbank2gff3pl {
  input {
    Boolean? no_infer
    Boolean? conf
    Boolean? so_file
    Boolean? manual
    Boolean? dir
    Boolean? outdir
    Boolean? zip
    Boolean? summary
    Boolean? filter
    Boolean? split
    Boolean? no_lump
    Boolean? e_thresh
    Boolean? format
    Boolean? gff_version
    Boolean? quiet
    Boolean? type_source
    File filename
  }
  command <<<
    bp_genbank2gff3_pl \
      ~{filename} \
      ~{if (no_infer) then "--noinfer" else ""} \
      ~{if (conf) then "--conf" else ""} \
      ~{if (so_file) then "--sofile" else ""} \
      ~{if (manual) then "--manual" else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (zip) then "--zip" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if (no_lump) then "--nolump" else ""} \
      ~{if (e_thresh) then "--ethresh" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (gff_version) then "--GFF_VERSION" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (type_source) then "--typesource" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_infer: "don't infer exon/mRNA subfeatures"
    conf: "path to the curation configuration file that contains user preferences\\nfor Genbank entries (must be YAML format)\\n(if --manual is passed without --ini, user will be prompted to\\ncreate the file if any manual input is saved)"
    so_file: "path to to the so.obo file to use for feature type mapping\\n(--sofile live will download the latest online revision)"
    manual: "when trying to guess the proper SO term, if more than\\none option matches the primary tag, the converter will\\nwait for user input to choose the correct one\\n(only works with --sofile)"
    dir: "path to a list of genbank flatfiles"
    outdir: "location to write GFF files (can be 'stdout' or '-' for pipe)"
    zip: "compress GFF3 output files with gzip"
    summary: "print a summary of the features in each contig"
    filter: "genbank feature type(s) to ignore"
    split: "split output to separate GFF and fasta files for\\neach genbank record"
    no_lump: "separate file for each reference sequence\\n(default is to lump all records together into one\\noutput file for each input file)"
    e_thresh: "error threshold for unflattener\\nset this high (>2) to ignore all unflattener errors"
    format: "Input format (SeqIO types): GenBank, Swiss or Uniprot, EMBL work\\n(GenBank is default)"
    gff_version: "3 is default, 2 and 2.5 and other Bio::Tools::GFF versions available"
    quiet: "don't talk about what is being processed"
    type_source: "SO sequence type for source (e.g. chromosome; region; contig)"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}