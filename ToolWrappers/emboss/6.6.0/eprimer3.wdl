version 1.0

task Eprimer3 {
  input {
    Boolean? hybrid_probe
    Boolean? num_return
    Boolean? included_region
    Boolean? target_region
    Boolean? excluded_region
    Boolean? forward_input
    Boolean? reverse_input
    File? mis_priming_library_file
    Boolean? explain_flag
    Boolean? file_flag
    Boolean? first_base_index
    Boolean? pick_anyway
    Boolean? max_mis_priming
    Boolean? pair_max_mis_priming
    Boolean? num_ns_accepted
    Boolean? self_any
    Boolean? self_end
    Boolean? max_end_stability
    Int length_dot
    Int six_zero_zero_slash_length
  }
  command <<<
    eprimer3 \
      ~{length_dot} \
      ~{six_zero_zero_slash_length} \
      ~{if (hybrid_probe) then "-hybridprobe" else ""} \
      ~{if (num_return) then "-numreturn" else ""} \
      ~{if (included_region) then "-includedregion" else ""} \
      ~{if (target_region) then "-targetregion" else ""} \
      ~{if (excluded_region) then "-excludedregion" else ""} \
      ~{if (forward_input) then "-forwardinput" else ""} \
      ~{if (reverse_input) then "-reverseinput" else ""} \
      ~{if defined(mis_priming_library_file) then ("-mispriminglibraryfile " +  '"' + mis_priming_library_file + '"') else ""} \
      ~{if (explain_flag) then "-explainflag" else ""} \
      ~{if (file_flag) then "-fileflag" else ""} \
      ~{if (first_base_index) then "-firstbaseindex" else ""} \
      ~{if (pick_anyway) then "-pickanyway" else ""} \
      ~{if (max_mis_priming) then "-maxmispriming" else ""} \
      ~{if (pair_max_mis_priming) then "-pairmaxmispriming" else ""} \
      ~{if (num_ns_accepted) then "-numnsaccepted" else ""} \
      ~{if (self_any) then "-selfany" else ""} \
      ~{if (self_end) then "-selfend" else ""} \
      ~{if (max_end_stability) then "-maxendstability" else ""}
  >>>
  parameter_meta {
    hybrid_probe: "toggle     [N] An 'internal oligo' is intended to be\\nused as a hybridization probe (hyb probe) to\\ndetect the PCR product after amplification."
    num_return: "integer    [5] The maximum number of primer pairs to\\nreturn. Primer pairs returned are sorted by\\ntheir 'quality', in other words by the value\\nof the objective function (where a lower\\nnumber indicates a better primer pair).\\nCaution: setting this parameter to a large\\nvalue will increase running time. (Integer 0\\nor more)"
    included_region: "range      [(full sequence)] A sub-region of the given\\nsequence in which to pick primers. For\\nexample, often the first dozen or so bases\\nof a sequence are vector, and should be\\nexcluded from consideration. The value for\\nthis parameter has the form\\n(start),(end)\\nwhere (start) is the index of the first base\\nto consider, and (end) is the last in the\\nprimer-picking region."
    target_region: "range      [(full sequence)] If one or more Targets is\\nspecified then a legal primer pair must\\nflank at least one of them. A Target might\\nbe a simple sequence repeat site (for\\nexample a CA repeat) or a single-base-pair\\npolymorphism. The value should be a\\nspace-separated list of\\n(start),(end)\\npairs where (start) is the index of the\\nfirst base of a Target, and (end) is the\\nlast\\nE.g. 50,51 requires primers to surround the\\n2 bases at positions 50 and 51."
    excluded_region: "range      [(full sequence)] Primer oligos may not\\noverlap any region specified in this tag.\\nThe associated value must be a\\nspace-separated list of\\n(start),(end)\\npairs where (start) is the index of the\\nfirst base of the excluded region, and and\\n(end) is the last. This tag is useful for\\ntasks such as excluding regions of low\\nsequence quality or for excluding regions\\ncontaining repetitive elements such as ALUs\\nor LINEs.\\nE.g. 401,407 68,70 forbids selection of\\nprimers in the 7 bases starting at 401 and\\nthe 3 bases at 68."
    forward_input: "string     The sequence of a forward primer to check\\nand around which to design reverse primers\\nand optional internal oligos. Must be a\\nsubstring of SEQUENCE. (Any string)"
    reverse_input: "string     The sequence of a reverse primer to check\\nand around which to design forward primers\\nand optional internal oligos. Must be a\\nsubstring of the reverse strand of SEQUENCE.\\n(Any string)"
    mis_priming_library_file: "The name of a file containing a nucleotide\\nsequence library of sequences to avoid\\namplifying (for example repetitive\\nsequences, or possibly the sequences of\\ngenes in a gene family that should not be\\namplified.) The file must be in (a slightly\\nrestricted) FASTA format (W. B. Pearson and\\nD.J. Lipman, PNAS 85:8 pp 2444-2448 [1988]);\\nwe briefly discuss the organization of this\\nfile below. If this parameter is specified\\nthen EPrimer3 locally aligns each candidate\\nprimer against each library sequence and\\nrejects those primers for which the local\\nalignment score times a specified weight\\n(see below) exceeds MAX-MISPRIMING. (The\\nmaximum value of the weight is arbitrarily\\nset to 100.0.)\\nEach sequence entry in the FASTA-format file\\nmust begin with an 'id line' that starts\\nwith '>'. The contents of the id line is\\n'slightly restricted' in that EPrimer3\\nparses everything after any optional\\nasterisk ('*') as a floating point number to\\nuse as the weight mentioned above. If the\\nid line contains no asterisk then the weight\\ndefaults to 1.0. The alignment scoring\\nsystem used is the same as for calculating\\ncomplementarity among oligos (e.g.\\nSELF-ANY). The remainder of an entry\\ncontains the sequence as lines following the\\nid line up until a line starting with '>'\\nor the end of the file. Whitespace and\\nnewlines are ignored. Characters 'A', 'T',\\n'G', 'C', 'a', 't', 'g', 'c' are retained\\nand any other character is converted to 'N'\\n(with the consequence that any IUB / IUPAC\\ncodes for ambiguous bases are converted to\\n'N'). There are no restrictions on line\\nlength.\\nAn empty value for this parameter indicates\\nthat no repeat library should be used."
    explain_flag: "boolean    [N] If this flag is true, produce\\nLEFT-EXPLAIN, RIGHT-EXPLAIN, and\\nINTERNAL-OLIGO-EXPLAIN output tags, which\\nare intended to provide information on the\\nnumber of oligos and primer pairs that\\nEPrimer3 examined, and statistics on the\\nnumber discarded for various reasons."
    file_flag: "boolean    [N] If the associated value is true, then\\nEPrimer3 creates two output files for each\\ninput SEQUENCE. File (sequence-id).for lists\\nall acceptable forward primers for\\n(sequence-id), and (sequence-id).rev lists\\nall acceptable reverse primers for\\n(sequence-id), where (sequence-id) is the\\nvalue of the SEQUENCE-ID tag (which must be\\nsupplied). In addition, if the input tag\\nTASK is 1 or 4, EPrimer3 produces a file\\n(sequence-id).int, which lists all\\nacceptable internal oligos."
    first_base_index: "integer    [1] This parameter is the index of the first\\nbase in the input sequence. For input and\\noutput using 1-based indexing (such as that\\nused in GenBank and to which many users are\\naccustomed) set this parameter to 1. For\\ninput and output using 0-based indexing set\\nthis parameter to 0. (This parameter also\\naffects the indexes in the contents of the\\nfiles produced when the primer file flag is\\nset.) (Any integer value)"
    pick_anyway: "boolean    [N] If true pick a primer pair even if\\nLEFT-INPUT, RIGHT-INPUT, or\\nINTERNAL-OLIGO-INPUT violates specific\\nconstraints."
    max_mis_priming: "float      [12.00] The maximum allowed weighted\\nsimilarity with any sequence in\\nMISPRIMING-LIBRARY. (Number up to 9999.990)"
    pair_max_mis_priming: "float      [24.00] The maximum allowed sum of weighted\\nsimilarities of a primer pair (one\\nsimilarity for each primer) with any single\\nsequence in MISPRIMING-LIBRARY. (Number up\\nto 9999.990)"
    num_ns_accepted: "integer    [0] Maximum number of unknown bases (N)\\nallowable in any primer. (Integer 0 or more)"
    self_any: "float      [8.00] The maximum allowable local alignment\\nscore when testing a single primer for\\n(local) self-complementarity and the maximum\\nallowable local alignment score when\\ntesting for complementarity between forward\\nand reverse primers. Local\\nself-complementarity is taken to predict the\\ntendency of primers to anneal to each other\\nwithout necessarily causing self-priming in\\nthe PCR. The scoring system gives 1.00 for\\ncomplementary bases, -0.25 for a match of\\nany base (or N) with an N, -1.00 for a\\nmismatch, and -2.00 for a gap. Only\\nsingle-base-pair gaps are allowed. For\\nexample, the alignment\\n5' ATCGNA 3'\\n...|| | |\\n3' TA-CGT 5'\\nis allowed (and yields a score of 1.75), but\\nthe alignment\\n5' ATCCGNA 3'\\n...|| | |\\n3' TA--CGT 5'\\nis not considered. Scores are non-negative,\\nand a score of 0.00 indicates that there is\\nno reasonable local alignment between two\\noligos. (Number from 0.000 to 9999.990)"
    self_end: "float      [3.00] The maximum allowable 3'-anchored\\nglobal alignment score when testing a single\\nprimer for self-complementarity, and the\\nmaximum allowable 3'-anchored global\\nalignment score when testing for\\ncomplementarity between forward and reverse\\nprimers. The 3'-anchored global alignment\\nscore is taken to predict the likelihood of\\nPCR-priming primer-dimers, for example\\n5' ATGCCCTAGCTTCCGGATG 3'\\n.............||| |||||\\n..........3' AAGTCCTACATTTAGCCTAGT 5'\\nor\\n5' AGGCTATGGGCCTCGCGA 3'\\n...............||||||\\n............3' AGCGCTCCGGGTATCGGA 5'\\nThe scoring system is as for the Maximum\\nComplementarity argument. In the examples\\nabove the scores are 7.00 and 6.00\\nrespectively. Scores are non-negative, and a\\nscore of 0.00 indicates that there is no\\nreasonable 3'-anchored global alignment\\nbetween two oligos. In order to estimate\\n3'-anchored global alignments for candidate\\nprimers and primer pairs, Primer assumes\\nthat the sequence from which to choose\\nprimers is presented 5' to 3'. It is\\nnonsensical to provide a larger value for\\nthis parameter than for the Maximum (local)\\nComplementarity parameter because the score\\nof a local alignment will always be at least\\nas great as the score of a global\\nalignment. (Number 0.000 or more)"
    max_end_stability: "float      [9.0] The maximum stability for the five 3'\\nbases of a forward or reverse primer. Bigger\\nnumbers mean more stable 3' ends. The value\\nis the maximum delta G for duplex\\ndisruption for the five 3' bases as\\ncalculated using the nearest neighbor\\nparameters published in Breslauer, Frank,\\nBloecker and Marky, Proc. Natl. Acad. Sci.\\nUSA, vol 83, pp 3746-3750. EPrimer3 uses a\\ncompletely permissive default value for\\nbackward compatibility (which we may change\\nin the next release). Rychlik recommends a\\nmaximum value of 9 (Wojciech Rychlik,\\n'Selection of Primers for Polymerase Chain\\nReaction' in BA White, Ed., 'Methods in\\nMolecular Biology, Vol. 15: PCR Protocols:\\nCurrent Methods and Applications', 1993, pp\\n31-40, Humana Press, Totowa NJ). (Number up\\nto 1000.000)"
    length_dot: "An empty value for this parameter indicates"
    six_zero_zero_slash_length: "Where [Na+} is the molar sodium"
  }
  output {
    File out_stdout = stdout()
  }
}