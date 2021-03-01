version 1.0

task Blat {
  input {
    Int? ooc
    String? database_type_type
    String? query_type_type
    Boolean? prot
    Int? tile_size
    String? step_size
    Int? one_off
    Int? min_match
    Int? min_score
    Int? min_identity
    Int? max_gap
    Boolean? no_head
    File? make_ooc
    Int? rep_match
    File? mask
    String? q_mask
    String? repeats
    Int? min_rep_divergence
    String? dots
    Boolean? trim_t
    Boolean? not_rima
    Boolean? trim_hard_a
    Boolean? fast_map
    File? out
    Boolean? fine
    Int? max_intron
    Boolean? extend_through_n
    String database
    String query
  }
  command <<<
    blat \
      ~{database} \
      ~{query} \
      ~{if defined(ooc) then ("-ooc " +  '"' + ooc + '"') else ""} \
      ~{if defined(database_type_type) then ("-t " +  '"' + database_type_type + '"') else ""} \
      ~{if defined(query_type_type) then ("-q " +  '"' + query_type_type + '"') else ""} \
      ~{if (prot) then "-prot" else ""} \
      ~{if defined(tile_size) then ("-tileSize " +  '"' + tile_size + '"') else ""} \
      ~{if defined(step_size) then ("-stepSize " +  '"' + step_size + '"') else ""} \
      ~{if defined(one_off) then ("-oneOff " +  '"' + one_off + '"') else ""} \
      ~{if defined(min_match) then ("-minMatch " +  '"' + min_match + '"') else ""} \
      ~{if defined(min_score) then ("-minScore " +  '"' + min_score + '"') else ""} \
      ~{if defined(min_identity) then ("-minIdentity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(max_gap) then ("-maxGap " +  '"' + max_gap + '"') else ""} \
      ~{if (no_head) then "-noHead" else ""} \
      ~{if defined(make_ooc) then ("-makeOoc " +  '"' + make_ooc + '"') else ""} \
      ~{if defined(rep_match) then ("-repMatch " +  '"' + rep_match + '"') else ""} \
      ~{if defined(mask) then ("-mask " +  '"' + mask + '"') else ""} \
      ~{if defined(q_mask) then ("-qMask " +  '"' + q_mask + '"') else ""} \
      ~{if defined(repeats) then ("-repeats " +  '"' + repeats + '"') else ""} \
      ~{if defined(min_rep_divergence) then ("-minRepDivergence " +  '"' + min_rep_divergence + '"') else ""} \
      ~{if defined(dots) then ("-dots " +  '"' + dots + '"') else ""} \
      ~{if (trim_t) then "-trimT" else ""} \
      ~{if (not_rima) then "-noTrimA" else ""} \
      ~{if (trim_hard_a) then "-trimHardA" else ""} \
      ~{if (fast_map) then "-fastMap" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (fine) then "-fine" else ""} \
      ~{if defined(max_intron) then ("-maxIntron " +  '"' + max_intron + '"') else ""} \
      ~{if (extend_through_n) then "-extendThroughN" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ooc: "tells the program to load over-occurring 11-mers from\\nan external file.  This will increase the speed\\nby a factor of 40 in many cases, but is not required."
    database_type_type: "Database type.  Type is one of:\\ndna - DNA sequence\\nprot - protein sequence\\ndnax - DNA sequence translated in six frames to protein\\nThe default is dna."
    query_type_type: "Query type.  Type is one of:\\ndna - DNA sequence\\nrna - RNA sequence\\nprot - protein sequence\\ndnax - DNA sequence translated in six frames to protein\\nrnax - DNA sequence translated in three frames to protein\\nThe default is dna."
    prot: "Synonymous with -t=prot -q=prot."
    tile_size: "Sets the size of match that triggers an alignment.\\nUsually between 8 and 12.\\nDefault is 11 for DNA and 5 for protein."
    step_size: "Spacing between tiles. Default is tileSize."
    one_off: "If set to 1, this allows one mismatch in tile and still\\ntriggers an alignment.  Default is 0."
    min_match: "Sets the number of tile matches.  Usually set from 2 to 4.\\nDefault is 2 for nucleotide, 1 for protein."
    min_score: "Sets minimum score.  This is the matches minus the\\nmismatches minus some sort of gap penalty.  Default is 30."
    min_identity: "Sets minimum sequence identity (in percent).  Default is\\n90 for nucleotide searches, 25 for protein or translated\\nprotein searches."
    max_gap: "Sets the size of maximum gap between tiles in a clump.  Usually\\nset from 0 to 3.  Default is 2. Only relevent for minMatch > 1."
    no_head: "Suppresses .psl header (so it's just a tab-separated file)."
    make_ooc: "Make overused tile file. Target needs to be complete genome."
    rep_match: "Sets the number of repetitions of a tile allowed before\\nit is marked as overused.  Typically this is 256 for tileSize\\n12, 1024 for tile size 11, 4096 for tile size 10.\\nDefault is 1024.  Typically comes into play only with makeOoc.\\nAlso affected by stepSize: when stepSize is halved, repMatch is\\ndoubled to compensate."
    mask: "Mask out repeats.  Alignments won't be started in masked region\\nbut may extend through it in nucleotide searches.  Masked areas\\nare ignored entirely in protein or translated searches. Types are:\\nlower - mask out lower-cased sequence\\nupper - mask out upper-cased sequence\\nout   - mask according to database.out RepeatMasker .out file\\nfile.out - mask database according to RepeatMasker file.out"
    q_mask: "Mask out repeats in query sequence.  Similar to -mask above, but\\nfor query rather than target sequence."
    repeats: "Type is same as mask types above.  Repeat bases will not be\\nmasked in any way, but matches in repeat areas will be reported\\nseparately from matches in other areas in the psl output."
    min_rep_divergence: "Minimum percent divergence of repeats to allow\\nthem to be unmasked.  Default is 15.  Only relevant for\\nmasking using RepeatMasker .out files."
    dots: "Output dot every N sequences to show program's progress."
    trim_t: "Trim leading poly-T."
    not_rima: "Don't trim trailing poly-A."
    trim_hard_a: "Remove poly-A tail from qSize as well as alignments in\\npsl output."
    fast_map: "Run for fast DNA/DNA remapping - not allowing introns,\\nrequiring high %ID. Query sizes must not exceed 5000."
    out: "Controls output file format.  Type is one of:\\npsl - Default.  Tab-separated format, no sequence\\npslx - Tab-separated format with sequence\\naxt - blastz-associated axt format\\nmaf - multiz-associated maf format\\nsim4 - similar to sim4 format\\nwublast - similar to wublast format\\nblast - similar to NCBI blast format\\nblast8- NCBI blast tabular format\\nblast9 - NCBI blast tabular format with comments"
    fine: "For high-quality mRNAs, look harder for small initial and\\nterminal exons.  Not recommended for ESTs."
    max_intron: "Sets maximum intron size. Default is 750000."
    extend_through_n: "Allows extension of alignment through large blocks of Ns."
    database: ""
    query: ""
  }
  output {
    File out_stdout = stdout()
    File out_mask = "${in_mask}"
    File out_out = "${in_out}"
  }
}