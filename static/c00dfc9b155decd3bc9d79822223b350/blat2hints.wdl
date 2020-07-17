version 1.0

task Blat2hints.pl {
  input {
    String? priority
    String? max_gap_len
    String? min_intron_len
    String? max_intron_len
    String? maxq_gap_len
    String? ep_cut_off
    String? source
    Boolean? introns_only
    Boolean? no_mult
    String? remove_redundant
    String? max_coverage
    Boolean? ss_on
    Boolean? trunks_s
    String? col_offset
    String? score
    String? clone_file
    String? terminus_file
    String? max_gene_len
  }
  command <<<
    blat2hints.pl \
      ~{if defined(priority) then ("--priority " +  '"' + priority + '"') else ""} \
      ~{if defined(max_gap_len) then ("--maxgaplen " +  '"' + max_gap_len + '"') else ""} \
      ~{if defined(min_intron_len) then ("--minintronlen " +  '"' + min_intron_len + '"') else ""} \
      ~{if defined(max_intron_len) then ("--maxintronlen " +  '"' + max_intron_len + '"') else ""} \
      ~{if defined(maxq_gap_len) then ("--maxQgaplen " +  '"' + maxq_gap_len + '"') else ""} \
      ~{if defined(ep_cut_off) then ("--ep_cutoff " +  '"' + ep_cut_off + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{true="--intronsonly" false="" introns_only} \
      ~{true="--nomult" false="" no_mult} \
      ~{if defined(remove_redundant) then ("--remove_redundant " +  '"' + remove_redundant + '"') else ""} \
      ~{if defined(max_coverage) then ("--maxcoverage " +  '"' + max_coverage + '"') else ""} \
      ~{true="--ssOn" false="" ss_on} \
      ~{true="--trunkSS" false="" trunks_s} \
      ~{if defined(col_offset) then ("--coloffset " +  '"' + col_offset + '"') else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{if defined(clone_file) then ("--clonefile " +  '"' + clone_file + '"') else ""} \
      ~{if defined(terminus_file) then ("--terminusfile " +  '"' + terminus_file + '"') else ""} \
      ~{if defined(max_gene_len) then ("--maxgenelen " +  '"' + max_gene_len + '"') else ""}
  >>>
  parameter_meta {
    priority: "priority of hint group (default 4)"
    max_gap_len: "gaps at most this length are simply closed (default 14)"
    min_intron_len: "alignments with gaps shorter than this and longer than maxgaplen are discarded (default 41)"
    max_intron_len: "alignments with longer gaps are discarded (default 350000)"
    maxq_gap_len: "maximum length of gap in query (cDNA) sequence (default 5)"
    ep_cut_off: "this many bp are cut off of each exonpart hint at end of alignment (default 10)"
    source: "source identifier (default 'E')"
    introns_only: "only retrieve intron hints (e.g. because the exon(part) hints are retrieved by converting to a wig track, default: off)"
    no_mult: "do not summarize multiple identical intron hints to a single one"
    remove_redundant: "keep the strongest hint for a region (default false)"
    max_coverage: "maximal number of hints at a given position. A high value causes long running time of AUGUSTUS in regions with thousands of cDNA alignments. (default 3000)"
    ss_on: "include splice site (dss, ass) hints in output (default false)"
    trunks_s: "include splice sites hints from the ends of a truncated alignment (contig too short)"
    col_offset: "column offset, 0 for direct blat output, 1 for psl format from UCSC database (default 0)"
    score: "fill this number in in the score column (default 0)"
    clone_file: "provide a file with clone names so close alignments from the same clone can be grouped. AUGUSTUS will try to put those hints into a single transcripts even if different ends of the clones were sequenced. File format (tab delimited): cloneA     read1   read2 cloneA     read3 cloneB     read4   read5"
    terminus_file: "provide a file with EST terminus information to infer tss/tts hints. AUGUSTUS will use tss/tts hints to predict transcription start/termination sites File format (tab delimited): # ESTname    EstDir    Type FrontTerminus  EndTerminus CACW5781.b1     5       A2      5TSS       Unknown CACW6759.g1     3       F23     5TNS       3TNS CACW14459.g2    3       D2      Unknown    3TNS CACW21662.g1    3       C2      5TNS       Unknown CACW25491.g1    3       F21     5TNS       3TNS-NP cloneB     read4   read5"
    max_gene_len: "alignments of the same clone are considered to be of the same gene if not separated by more than this (400000) Alignments that span more than this are ignored, but better filter long introns through alignment program."
  }
}