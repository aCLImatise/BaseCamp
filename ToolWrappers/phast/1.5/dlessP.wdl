version 1.0

task DlessP {
  input {
    File? msa_format
    File? refseq
    Int? ref_idx
    File? timing
    File? html
    String alignment
    String tree_dot_mod
    String predictions_dot_gff
  }
  command <<<
    dlessP \
      ~{alignment} \
      ~{tree_dot_mod} \
      ~{predictions_dot_gff} \
      ~{if defined(msa_format) then ("--msa-format " +  '"' + msa_format + '"') else ""} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{if defined(ref_idx) then ("--refidx " +  '"' + ref_idx + '"') else ""} \
      ~{if defined(timing) then ("--timing " +  '"' + timing + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    msa_format: "|PHYLIP|MPM|MAF|SS\\nAlignment format (default is to guess format from file contents).\\nNote that the program msa_view can be used for conversion."
    refseq: "(for use with --msa-format MAF) Read the complete text of the\\nreference sequence from <fname> (FASTA format) and combine it\\nwith the contents of the MAF file to produce a complete,\\nordered representation of the alignment.  The reference\\nsequence of the MAF file is assumed to be the one that appears\\nfirst in each block."
    ref_idx: "Use coordinate frame of specified sequence in output.  Default\\nvalue is 1, first sequence in alignment; 0 indicates\\ncoordinate frame of entire multiple alignment."
    timing: "Write timing data to <file>."
    html: "Create a directory and write one HTML file into it per DLESS\\nprediction, giving the stats for that prediction."
    alignment: ""
    tree_dot_mod: ""
    predictions_dot_gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}