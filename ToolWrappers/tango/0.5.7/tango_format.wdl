version 1.0

task TangoFormat {
  input {
    Boolean? force
    Boolean? force_id_map
    File? taxid_map
    Int? max_idle_n
    Directory? tmpdir
    String fast_a_file
    String reformatted
  }
  command <<<
    tango format \
      ~{fast_a_file} \
      ~{reformatted} \
      ~{if (force) then "--force" else ""} \
      ~{if (force_id_map) then "--forceidmap" else ""} \
      ~{if defined(taxid_map) then ("--taxidmap " +  '"' + taxid_map + '"') else ""} \
      ~{if defined(max_idle_n) then ("--maxidlen " +  '"' + max_idle_n + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "Force overwrite of existing reformatted fastafile"
    force_id_map: "Force overwrite of existing accession2taxid mapfile"
    taxid_map: "Protein accession to taxid mapfile. For UniRef this\\nfile is created from information in the fasta headers\\nand stored in a file named prot.accession2taxid.gz in\\nthe same directory as the reformatted fasta file.\\nSpecify another path here."
    max_idle_n: "Maximum allowed length of sequence ids. Defaults to 14\\n(required by diamond for adding taxonomy info to\\ndatabase). Ids longer than this are written to a file\\nwith the original id"
    tmpdir: "Temporary directory for writing fasta files"
    fast_a_file: "Specify protein fasta to reformat"
    reformatted: "Path to reformatted fastafile"
  }
  output {
    File out_stdout = stdout()
  }
}