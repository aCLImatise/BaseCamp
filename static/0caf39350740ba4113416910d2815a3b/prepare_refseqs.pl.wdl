version 1.0

task Preparerefseqspl {
  input {
    Boolean? no_sort
    File? conf
    Directory? out
    Boolean? no_seq
    String? refs
    Boolean? compress
    Int? chunksize
    Boolean? no_hash
    String? track_label
    String? key
    String? seqtype
    Boolean? track_config
    String used_dot
  }
  command <<<
    prepare_refseqs_pl \
      ~{used_dot} \
      ~{if (no_sort) then "--noSort" else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (no_seq) then "--noseq" else ""} \
      ~{if defined(refs) then ("--refs " +  '"' + refs + '"') else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if (no_hash) then "--nohash" else ""} \
      ~{if defined(track_label) then ("--trackLabel " +  '"' + track_label + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(seqtype) then ("--seqType " +  '"' + seqtype + '"') else ""} \
      ~{if (track_config) then "--trackConfig" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/jbrowse:1.16.10--pl526hc9558a2_0"
  }
  parameter_meta {
    no_sort: "If using GFF or FASTA input, preserve the order of the reference\\nsequences (sorts alphabetically by default)."
    conf: "biodb-to-json.pl configuration file that defines a database from\\nwhich to get reference sequence information."
    out: "Optional directory to write to. Defaults to data/."
    no_seq: "Do not store the actual sequence bases, just the sequence metadata\\n(name, length, and so forth)."
    refs: "Output only the sequences with the given names."
    compress: "If passed, compress the reference sequences with gzip, making the\\nchunks be .txt.gz. NOTE: this requires a bit of additional web\\nserver configuration to be served correctly."
    chunksize: "Size of sequence chunks to make, in base pairs. Default 20kb. This\\nis multiplied by 4 if --compress is passed, so that the compressed\\nsequence files are still approximately this size."
    no_hash: "Store sequences in a flat seq/$seqname/$chunk.txt structure, instead\\nof the new (more scalable) /seq/hash/hash/hash/$seqname-$chunk.txt\\nstructure."
    track_label: "The unique name of the sequence track, default 'DNA'."
    key: "The displayed name of the sequence track, defaults to 'Reference\\nsequence'."
    seqtype: "The Name of the alphabet used for these reference sequences, usually\\neither 'dna', 'rna', or 'protein'."
    track_config: "'{ JSON-format extra configuration for this track }'\\nAdditional top-level configuration for the client, in JSON syntax.\\nExample:\\n--trackConfig '{ \\\"glyph\\\": \\\"ProcessedTranscript\\\" }'"
    used_dot: "OPTIONS"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}