version 1.0

task Bam2hints {
  input {
    Int? priority
    Int? max_gap_len
    Int? min_intron_len
    Int? max_intron_len
    Int? min_end_block_len
    Int? maxq_gap_len
    Boolean? exon_hints
    Int? ep_cut_off
    String? source
    Boolean? introns_only
    Boolean? no_mult
    Boolean? remove_redundant
    Int? max_coverage
    Boolean? ss_on
    Boolean? trunks_s
    Int? score
    Int? max_gene_len
    String? out
    String? in
  }
  command <<<
    bam2hints \
      ~{if defined(priority) then ("--priority " +  '"' + priority + '"') else ""} \
      ~{if defined(max_gap_len) then ("--maxgaplen " +  '"' + max_gap_len + '"') else ""} \
      ~{if defined(min_intron_len) then ("--minintronlen " +  '"' + min_intron_len + '"') else ""} \
      ~{if defined(max_intron_len) then ("--maxintronlen " +  '"' + max_intron_len + '"') else ""} \
      ~{if defined(min_end_block_len) then ("--MinEndBlockLen " +  '"' + min_end_block_len + '"') else ""} \
      ~{if defined(maxq_gap_len) then ("--maxQgaplen " +  '"' + maxq_gap_len + '"') else ""} \
      ~{if (exon_hints) then "--exonhints" else ""} \
      ~{if defined(ep_cut_off) then ("--ep_cutoff " +  '"' + ep_cut_off + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if (introns_only) then "--intronsonly" else ""} \
      ~{if (no_mult) then "--nomult" else ""} \
      ~{if (remove_redundant) then "--remove_redundant" else ""} \
      ~{if defined(max_coverage) then ("--maxcoverage " +  '"' + max_coverage + '"') else ""} \
      ~{if (ss_on) then "--ssOn" else ""} \
      ~{if (trunks_s) then "--trunkSS" else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{if defined(max_gene_len) then ("--maxgenelen " +  '"' + max_gene_len + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    priority: "priority of hint group (set to 4)"
    max_gap_len: "gaps at most this length are simply closed (set to 14)"
    min_intron_len: "alignments with gaps shorter than this and longer than maxgaplen are discarded (set to 32)"
    max_intron_len: "alignments with longer gaps are discarded (set to 350000)"
    min_end_block_len: "minimum length of a 'dangling' exon (set to 8)"
    maxq_gap_len: "maximum length of gap in query (cDNA) sequence (set to 5)"
    exon_hints: "compute exonpart, exon and splice site hints in addition to intron hints (set to 0=Off)\\nYou should generate exonpart hints from RNA-Seq using wiggle (.wig) input to wig2hints."
    ep_cut_off: "this many bp are cut off of each exonpart hint at end of alignment (set to 10)"
    source: "source identifier (set to 'E')"
    introns_only: "only retrieve intron hints (e.g. because the exon(part) hints are retrieved by converting to a wig track, set to 1=On)\\ndeprecated as this is the default now"
    no_mult: "do not summarize multiple identical intron hints to a single one (set to 0=Off)"
    remove_redundant: "only keep the strongest hint for a region (set to 0=Off)"
    max_coverage: "maximal number of hints at a given position (0: filtering deactivated). A high value causes long running time of\\nAUGUSTUS in regions with thousands of cDNA alignments. (set to 0)"
    ss_on: "include splice site (dss, ass) hints in output (set to 0=Off)"
    trunks_s: "include splice sites hints from the ends of a truncated alignment (contig too short, set to 0=Off)"
    score: "fill this number in in the score column (set to 0)"
    max_gene_len: "alignments of the same clone are considered to be of the same gene if not separated by more than this (set to 400000)\\nAlignments that span more than this are ignored, but better filter long introns through an alignment program."
    out: ""
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}