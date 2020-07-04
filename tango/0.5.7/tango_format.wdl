version 1.0

task TangoFormat {
  input {
    Boolean? force
    Boolean? force_id_map
    String? taxid_map
    Int? max_idle_n
    String? tmpdir
    String fast_a_file
    String reformatted
  }
  command <<<
    tango format \
      ~{fast_a_file} \
      ~{reformatted} \
      ~{true="--force" false="" force} \
      ~{true="--forceidmap" false="" force_id_map} \
      ~{if defined(taxid_map) then ("--taxidmap " +  '"' + taxid_map + '"') else ""} \
      ~{if defined(max_idle_n) then ("--maxidlen " +  '"' + max_idle_n + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  parameter_meta {
    force: "Force overwrite of existing reformatted fastafile"
    force_id_map: "Force overwrite of existing accession2taxid mapfile"
    taxid_map: "Protein accession to taxid mapfile. For UniRef this file is created from information in the fasta headers and stored in a file named prot.accession2taxid.gz in the same directory as the reformatted fasta file. Specify another path here."
    max_idle_n: "Maximum allowed length of sequence ids. Defaults to 14 (required by diamond for adding taxonomy info to database). Ids longer than this are written to a file with the original id"
    tmpdir: "Temporary directory for writing fasta files"
    fast_a_file: "Specify protein fasta to reformat"
    reformatted: "Path to reformatted fastafile"
  }
}