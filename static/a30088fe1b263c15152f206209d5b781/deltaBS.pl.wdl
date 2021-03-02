version 1.0

task DeltaBSpl {
  input {
    Boolean? file_type
    Boolean? file_one
    Boolean? file_two
    Boolean? pfam_an_not_one
    Boolean? pfam_an_not_two
    Boolean? p_hmmer_an_not_one
    Boolean? p_hmmer_an_not_two
    Directory? outdir
    Boolean? orth_list
    Boolean? hmmer_path
    Boolean? hmm_libdir
    Boolean? cpus
    Boolean? tempdir
    Boolean? post
    Boolean? dirty
    Boolean? verbose
  }
  command <<<
    deltaBS_pl \
      ~{if (file_type) then "--filetype" else ""} \
      ~{if (file_one) then "--file1" else ""} \
      ~{if (file_two) then "--file2" else ""} \
      ~{if (pfam_an_not_one) then "--pfamannot1" else ""} \
      ~{if (pfam_an_not_two) then "--pfamannot2" else ""} \
      ~{if (p_hmmer_an_not_one) then "--phmmerannot1" else ""} \
      ~{if (p_hmmer_an_not_two) then "--phmmerannot2" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (orth_list) then "--orthlist" else ""} \
      ~{if (hmmer_path) then "--hmmerpath" else ""} \
      ~{if (hmm_libdir) then "--hmmlibdir" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (tempdir) then "--tempdir" else ""} \
      ~{if (post) then "--post" else ""} \
      ~{if (dirty) then "--dirty" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_type: ":       Specify filetype, must be 'embl', 'genbank', or 'fasta'"
    file_one: ":       Reference genome/proteome in filetype format"
    file_two: ":       Comparator genome/proteome in filetype format"
    pfam_an_not_one: ":       Pfam annotations of proteome1"
    pfam_an_not_two: ":       Pfam annotations of proteome2"
    p_hmmer_an_not_one: ":       phmmer domtblout of proteome1 vs proteome2"
    p_hmmer_an_not_two: ":       phmmer domtblout of proteome2 vs proteome1"
    outdir: ":       Output directory"
    orth_list: ":       Ortholog list file"
    hmmer_path: ":       Path to hmmer installation"
    hmm_libdir: ":       Path to hmm libraries (and annotation files for post-processing)"
    cpus: ":       Number of CPUs for hmmsearch, phmmer etc to use."
    tempdir: ":       Path to temporary directory"
    post: ":       Enable post-processing (pathways, etc. EXPERIMENTAL)"
    dirty: ":       Do not delete /tmp file"
    verbose: ":       Turn on verbose messaging"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}