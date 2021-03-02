version 1.0

task Pipelign {
  input {
    File? in_file
    File? outfile
    Int? lent_hr
    String? alphabet
    Boolean? keep_orphans
    Boolean? keep_bad_seqs
    Boolean? m_zip
    Float? simper
    String? run
    String? merge
    Int? thread
    Int? mite_rate_long
    Int? miter_at_emerge
    Directory? outdir
    Directory? clear_existing_directory
    Float? am_big_per
    String? stage
    Boolean? exclude_clusters
  }
  command <<<
    pipelign \
      ~{if defined(in_file) then ("--inFile " +  '"' + in_file + '"') else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if defined(lent_hr) then ("--lenThr " +  '"' + lent_hr + '"') else ""} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if (keep_orphans) then "--keepOrphans" else ""} \
      ~{if (keep_bad_seqs) then "--keepBadSeqs" else ""} \
      ~{if (m_zip) then "--mZip" else ""} \
      ~{if defined(simper) then ("--simPer " +  '"' + simper + '"') else ""} \
      ~{if defined(run) then ("--run " +  '"' + run + '"') else ""} \
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(mite_rate_long) then ("--mIterateLong " +  '"' + mite_rate_long + '"') else ""} \
      ~{if defined(miter_at_emerge) then ("--mIterateMerge " +  '"' + miter_at_emerge + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""} \
      ~{if (clear_existing_directory) then "--clearExistingDirectory" else ""} \
      ~{if defined(am_big_per) then ("--ambigPer " +  '"' + am_big_per + '"') else ""} \
      ~{if defined(stage) then ("--stage " +  '"' + stage + '"') else ""} \
      ~{if (exclude_clusters) then "--excludeClusters" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: "Input sequence file in FASTA format"
    outfile: "FASTA formatted output alignment file"
    lent_hr: "Length threshold for full sequences (default: 0.7)"
    alphabet: "Input sequences can be dna/rna/aa (default: dna)"
    keep_orphans: "Add fragments without clusters"
    keep_bad_seqs: "Add long sequences with too many ambiguous residues"
    m_zip: "Create zipped intermediate output files"
    simper: "Percent sequence similarity for clustering (default: 0.8)"
    run: "Run either (J)oblib/(G)NU parallel version (default: G)"
    merge: "Merge using (P)arallel/(C)onsensus strategy  (default: P)"
    thread: "Number of CPU/threads to use (default: 1)"
    mite_rate_long: "Number of iterations to refine long alignments (default: 1)"
    miter_at_emerge: "Number of iterations to refine merged alignment (default: 1)"
    outdir: "Name for output directory to hold intermediate files"
    clear_existing_directory: "Remove files from existing output directory"
    am_big_per: "Proportion of ambiguous characters allowed in the long sequences (default: 0.1)"
    stage: "1  Make cluster alignments and HMM of long sequences\\n2  Align long sequences only\\n3  Assign fragments to clusters\\n4  Make cluster alignments with fragments\\n5  Align all sequences"
    exclude_clusters: "Exclude clusters from final alignment\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    Directory out_outdir = "${in_outdir}"
    Directory out_clear_existing_directory = "${in_clear_existing_directory}"
  }
}