version 1.0

task Blat2hintspl {
  input {
    Int? priority
    Int? max_gap_len
    Int? min_intron_len
    Int? max_intron_len
    Int? maxq_gap_len
    Int? ep_cut_off
    String? source
    Boolean? introns_only
    Boolean? no_mult
    String? remove_redundant
    Int? max_coverage
    Boolean? ss_on
    Boolean? trunks_s
    Int? col_offset
    Int? score
    File? clone_file
    File? terminus_file
    Int? max_gene_len
  }
  command <<<
    blat2hints_pl \
      ~{if defined(priority) then ("--priority " +  '"' + priority + '"') else ""} \
      ~{if defined(max_gap_len) then ("--maxgaplen " +  '"' + max_gap_len + '"') else ""} \
      ~{if defined(min_intron_len) then ("--minintronlen " +  '"' + min_intron_len + '"') else ""} \
      ~{if defined(max_intron_len) then ("--maxintronlen " +  '"' + max_intron_len + '"') else ""} \
      ~{if defined(maxq_gap_len) then ("--maxQgaplen " +  '"' + maxq_gap_len + '"') else ""} \
      ~{if defined(ep_cut_off) then ("--ep_cutoff " +  '"' + ep_cut_off + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if (introns_only) then "--intronsonly" else ""} \
      ~{if (no_mult) then "--nomult" else ""} \
      ~{if defined(remove_redundant) then ("--remove_redundant " +  '"' + remove_redundant + '"') else ""} \
      ~{if defined(max_coverage) then ("--maxcoverage " +  '"' + max_coverage + '"') else ""} \
      ~{if (ss_on) then "--ssOn" else ""} \
      ~{if (trunks_s) then "--trunkSS" else ""} \
      ~{if defined(col_offset) then ("--coloffset " +  '"' + col_offset + '"') else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{if defined(clone_file) then ("--clonefile " +  '"' + clone_file + '"') else ""} \
      ~{if defined(terminus_file) then ("--terminusfile " +  '"' + terminus_file + '"') else ""} \
      ~{if defined(max_gene_len) then ("--maxgenelen " +  '"' + max_gene_len + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
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
    max_coverage: "maximal number of hints at a given position. A high value causes long running time of\\nAUGUSTUS in regions with thousands of cDNA alignments. (default 3000)"
    ss_on: "include splice site (dss, ass) hints in output (default false)"
    trunks_s: "include splice sites hints from the ends of a truncated alignment (contig too short)"
    col_offset: "column offset, 0 for direct blat output, 1 for psl format from UCSC database (default 0)"
    score: "fill this number in in the score column (default 0)"
    clone_file: "provide a file with clone names so close alignments from the same clone can be grouped.\\nAUGUSTUS will try to put those hints into a single transcripts even if different ends of\\nthe clones were sequenced. File format (tab delimited):\\ncloneA     read1   read2\\ncloneA     read3\\ncloneB     read4   read5"
    terminus_file: "provide a file with EST terminus information to infer tss/tts hints.\\nAUGUSTUS will use tss/tts hints to predict transcription start/termination sites\\nFile format (tab delimited):\\n# ESTname    EstDir    Type FrontTerminus  EndTerminus\\nCACW5781.b1     5       A2      5TSS       Unknown\\nCACW6759.g1     3       F23     5TNS       3TNS\\nCACW14459.g2    3       D2      Unknown    3TNS\\nCACW21662.g1    3       C2      5TNS       Unknown\\nCACW25491.g1    3       F21     5TNS       3TNS-NP\\ncloneB     read4   read5"
    max_gene_len: "alignments of the same clone are considered to be of the same gene if not separated by more than this (400000)\\nAlignments that span more than this are ignored, but better filter long introns through alignment program.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}