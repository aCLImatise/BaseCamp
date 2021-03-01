version 1.0

task FastqSimulate {
  input {
    String? use_sequences_reffasta
    Float? create_outputs_namefastq
    Int? create_reads_length
    String? create_pairs_mp
    String? set_read_coverage
    String? set_clone_coverage
    Float? em
    Float? ei
    Float? ed
    Boolean? allow_gaps
    Boolean? all_owns
    Boolean? no_junction
    String? normal
    Boolean? se
    Int? cc
    Int? pe
    Int? mp
  }
  command <<<
    fastqSimulate \
      ~{if defined(use_sequences_reffasta) then ("-f " +  '"' + use_sequences_reffasta + '"') else ""} \
      ~{if defined(create_outputs_namefastq) then ("-o " +  '"' + create_outputs_namefastq + '"') else ""} \
      ~{if defined(create_reads_length) then ("-l " +  '"' + create_reads_length + '"') else ""} \
      ~{if defined(create_pairs_mp) then ("-n " +  '"' + create_pairs_mp + '"') else ""} \
      ~{if defined(set_read_coverage) then ("-x " +  '"' + set_read_coverage + '"') else ""} \
      ~{if defined(set_clone_coverage) then ("-X " +  '"' + set_clone_coverage + '"') else ""} \
      ~{if defined(em) then ("-em " +  '"' + em + '"') else ""} \
      ~{if defined(ei) then ("-ei " +  '"' + ei + '"') else ""} \
      ~{if defined(ed) then ("-ed " +  '"' + ed + '"') else ""} \
      ~{if (allow_gaps) then "-allowgaps" else ""} \
      ~{if (all_owns) then "-allowns" else ""} \
      ~{if (no_junction) then "-nojunction" else ""} \
      ~{if defined(normal) then ("-normal " +  '"' + normal + '"') else ""} \
      ~{if (se) then "-se" else ""} \
      ~{if defined(cc) then ("-cc " +  '"' + cc + '"') else ""} \
      ~{if defined(pe) then ("-pe " +  '"' + pe + '"') else ""} \
      ~{if defined(mp) then ("-mp " +  '"' + mp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_sequences_reffasta: "Use sequences in ref.fasta as the genome."
    create_outputs_namefastq: "Create outputs name.1.fastq and name.2.fastq (and maybe others)."
    create_reads_length: "Create reads of length 'len' bases."
    create_pairs_mp: "Create 'n' reads (for -se) or 'n' pairs of reads (for -pe and -mp)."
    set_read_coverage: "Set 'np' to create reads that sample the genome to 'read-cov' read coverage."
    set_clone_coverage: "Set 'np' to create reads that sample the genome to 'clone-cov' clone coverage."
    em: "Reads will contain fraction mismatch  error 'e' (0.01 == 1% error)."
    ei: "Reads will contain fraction insertion error 'e' (0.01 == 1% error)."
    ed: "Reads will contain fraction deletion  error 'e' (0.01 == 1% error)."
    allow_gaps: "Allow pairs to span N regions in the reference.  By default, pairs\\nare not allowed to span a gap.  Reads are never allowed to cover N's."
    all_owns: "Allow reads to contain N regions.  Implies -allowgaps"
    no_junction: "For -mp, do not create chimeric junction reads.  Create only fully PE or\\nfully MP reads."
    normal: "Output a normal-oriented (both forward or both reverse) pair with\\nprobability p.  Only for -pe and -mp."
    se: "Create single-end reads."
    cc: "junkStdDev false\\nCreate chimeric single-end reads.  The chimer is formed from two uniformly\\ndistributed positions in the reference.  Some amount of random junk is inserted\\nat the junction.  With probability 'false' the read is not chimeric, but still\\nthe junk bases inserted in the middle."
    pe: "shearStdDev\\nCreate paired-end reads, from fragments of size 'shearSize +- shearStdDev'."
    mp: "insertStdDev shearSize shearStdDev enrichment\\nCreate mate-pair reads.  The pairs will be 'insertSize +- insertStdDev'\\napart.  The circularized insert is then sheared into fragments of size\\n'shearSize +- shearStdDev'.  With probability 'enrichment' the fragment\\ncontaining the junction is used to form the pair of reads.  The junction\\nlocation is uniformly distributed through this fragment.\\nReads are labeled as:\\ntMP - a MP pair\\nfMP - a PE pair\\naMP - a MP pair with junction in the first read\\nbMP - a MP pair with junction in the second read\\ncMP - a MP pair with junction in both reads (the reads overlap)"
  }
  output {
    File out_stdout = stdout()
  }
}