version 1.0

task Bam2hints {
  input {
    String? priority
    String? max_gap_len
    String? min_intron_len
    String? max_intron_len
    String? min_end_block_len
    String? maxq_gap_len
    Boolean? exon_hints
    String? ep_cut_off
    String? source
    Boolean? introns_only
    Boolean? no_mult
    Boolean? remove_redundant
    String? max_coverage
    Boolean? ss_on
    Boolean? trunks_s
    String? score
    String? max_gene_len
    String? in
    String? out
  }
  command <<<
    bam2hints \
      ~{if defined(priority) then ("--priority " +  '"' + priority + '"') else ""} \
      ~{if defined(max_gap_len) then ("--maxgaplen " +  '"' + max_gap_len + '"') else ""} \
      ~{if defined(min_intron_len) then ("--minintronlen " +  '"' + min_intron_len + '"') else ""} \
      ~{if defined(max_intron_len) then ("--maxintronlen " +  '"' + max_intron_len + '"') else ""} \
      ~{if defined(min_end_block_len) then ("--MinEndBlockLen " +  '"' + min_end_block_len + '"') else ""} \
      ~{if defined(maxq_gap_len) then ("--maxQgaplen " +  '"' + maxq_gap_len + '"') else ""} \
      ~{true="--exonhints" false="" exon_hints} \
      ~{if defined(ep_cut_off) then ("--ep_cutoff " +  '"' + ep_cut_off + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{true="--intronsonly" false="" introns_only} \
      ~{true="--nomult" false="" no_mult} \
      ~{true="--remove_redundant" false="" remove_redundant} \
      ~{if defined(max_coverage) then ("--maxcoverage " +  '"' + max_coverage + '"') else ""} \
      ~{true="--ssOn" false="" ss_on} \
      ~{true="--trunkSS" false="" trunks_s} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{if defined(max_gene_len) then ("--maxgenelen " +  '"' + max_gene_len + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    priority: "-p   priority of hint group (set to 4)"
    max_gap_len: "-g   gaps at most this length are simply closed (set to 14)"
    min_intron_len: "-m   alignments with gaps shorter than this and longer than maxgaplen are discarded (set to 32)"
    max_intron_len: "-M   alignments with longer gaps are discarded (set to 350000)"
    min_end_block_len: "minimum length of a 'dangling' exon (set to 8)"
    maxq_gap_len: "-q   maximum length of gap in query (cDNA) sequence (set to 5)"
    exon_hints: "-x   compute exonpart, exon and splice site hints in addition to intron hints (set to 0=Off) You should generate exonpart hints from RNA-Seq using wiggle (.wig) input to wig2hints."
    ep_cut_off: "-e   this many bp are cut off of each exonpart hint at end of alignment (set to 10)"
    source: "-s   source identifier (set to 'E')"
    introns_only: "-I   only retrieve intron hints (e.g. because the exon(part) hints are retrieved by converting to a wig track, set to 1=On) deprecated as this is the default now"
    no_mult: "-n   do not summarize multiple identical intron hints to a single one (set to 0=Off)"
    remove_redundant: "only keep the strongest hint for a region (set to 0=Off)"
    max_coverage: "-C   maximal number of hints at a given position (0: filtering deactivated). A high value causes long running time of AUGUSTUS in regions with thousands of cDNA alignments. (set to 0)"
    ss_on: "-S   include splice site (dss, ass) hints in output (set to 0=Off)"
    trunks_s: "-T   include splice sites hints from the ends of a truncated alignment (contig too short, set to 0=Off)"
    score: "-s   fill this number in in the score column (set to 0)"
    max_gene_len: "-G   alignments of the same clone are considered to be of the same gene if not separated by more than this (set to 400000) Alignments that span more than this are ignored, but better filter long introns through an alignment program."
    in: ""
    out: ""
  }
}