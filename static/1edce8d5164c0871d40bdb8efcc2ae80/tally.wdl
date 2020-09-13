version 1.0

task Tally {
  input {
    File? input_stream_gzipped
    String? gzipped_output_stream
    Boolean? fast_a_in
    Boolean? fast_a_out
    Boolean? with_quality
    Boolean? no_auto
    Boolean? peek
    Int? zip_factor
    Int? l
    Int? u
    Int? tri
    Int? si
    Int? dsi
    File? sum_stat
    String? second_paired_requires
    String? gzipped_second_stream
    Boolean? fast_a_x_in
    Boolean? fast_qx_in
    Boolean? hsd
    Boolean? dsd
    Int? hs
    Int? ds
    Boolean? unsorted
    Boolean? cx
    Boolean? no_put
    String? turn_verbosity_settingscmp
    Boolean? record_format
    Int? format
    Boolean? no_tally
    Boolean? pair_by_offset
  }
  command <<<
    tally \
      ~{if defined(input_stream_gzipped) then ("-i " +  '"' + input_stream_gzipped + '"') else ""} \
      ~{if defined(gzipped_output_stream) then ("-o " +  '"' + gzipped_output_stream + '"') else ""} \
      ~{if (fast_a_in) then "--fasta-in" else ""} \
      ~{if (fast_a_out) then "--fasta-out" else ""} \
      ~{if (with_quality) then "--with-quality" else ""} \
      ~{if (no_auto) then "--no-auto" else ""} \
      ~{if (peek) then "--peek" else ""} \
      ~{if defined(zip_factor) then ("-zip-factor " +  '"' + zip_factor + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(u) then ("-u " +  '"' + u + '"') else ""} \
      ~{if defined(tri) then ("-tri " +  '"' + tri + '"') else ""} \
      ~{if defined(si) then ("-si " +  '"' + si + '"') else ""} \
      ~{if defined(dsi) then ("-dsi " +  '"' + dsi + '"') else ""} \
      ~{if (sum_stat) then "-sumstat" else ""} \
      ~{if defined(second_paired_requires) then ("-j " +  '"' + second_paired_requires + '"') else ""} \
      ~{if defined(gzipped_second_stream) then ("-p " +  '"' + gzipped_second_stream + '"') else ""} \
      ~{if (fast_a_x_in) then "--fastax-in" else ""} \
      ~{if (fast_qx_in) then "--fastqx-in" else ""} \
      ~{if (hsd) then "-hsd" else ""} \
      ~{if (dsd) then "-dsd" else ""} \
      ~{if defined(hs) then ("-hs " +  '"' + hs + '"') else ""} \
      ~{if defined(ds) then ("-ds " +  '"' + ds + '"') else ""} \
      ~{if (unsorted) then "--unsorted" else ""} \
      ~{if (cx) then "--cx" else ""} \
      ~{if (no_put) then "--noput" else ""} \
      ~{if defined(turn_verbosity_settingscmp) then ("-v " +  '"' + turn_verbosity_settingscmp + '"') else ""} \
      ~{if (record_format) then "-record-format" else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if (no_tally) then "--no-tally" else ""} \
      ~{if (pair_by_offset) then "--pair-by-offset" else ""}
  >>>
  parameter_meta {
    input_stream_gzipped: "input stream (gzipped file allowed) (default STDIN)"
    gzipped_output_stream: "(gzipped!) output stream (default out.tally.gz)"
    fast_a_in: "expect FASTA format (same as -record-format '>%I%#%R%n')"
    fast_a_out: "write FASTA format (same as -format '>trn_%I%s%C%n%R%n')"
    with_quality: "pass quality scores along, collate by taking per-base max"
    no_auto: "do not peek in input file and set memory parameters automatically"
    peek: "peek in input file and output estimated memory parameters"
    zip_factor: "assume compression factor <num> (use 1.0 for uncompressed files"
    l: "require read length >= <int>"
    u: "require read length <= <int>"
    tri: "required tri-nucleotide score <= <int>"
    si: "strip <int> bases from start of read before uniquifying"
    dsi: "as -si but after uniquifying (degenerate sequence insert)"
    sum_stat: "<fname> output file with counts of discarded categories"
    second_paired_requires: "second paired end input stream\\n-> (requires -record-format with %J or --fastqx-in or --fastax-in)"
    gzipped_second_stream: "(gzipped!) second output stream for second paired end (cf -j)"
    fast_a_x_in: "expect reaper --fastax-out format (same as -record-format '>%I%brecno=%J%#%R%n')"
    fast_qx_in: "expect reaper --fastqx-out format (same as -record-format '@%I%brecno=%J%#%R%n+%#%Q%n')\\n-> these two options are for re-pairing individually processed paired-end files"
    hsd: "[1,-1,2,-2]  increase or decrease hash size relative to default"
    dsd: "[1,-1,2,-2]  increase or decrease data size relative to default"
    hs: "k in 14..32 specifies hash size 2 ** k"
    ds: "k in 14..31 specifies storage size 2 ** k"
    unsorted: "do not sort output sequences"
    cx: "do not compress sequence (unit testing)\\nNOTE with --cx output will not be sorted in the same way\\nbecause hash values change. To compare, sort outputs"
    no_put: "do not output uniquified sequences"
    turn_verbosity_settingscmp: "turn on verbosity settings\\ncmp         with cmp paired end identifier mismatches will be reported"
    record_format: "specify input format\\nThe same syntax as documented under reaper --record-format,\\nAdditionally %J is accepted and assumes a numerical ID that\\nwill be strictly increasing.\\nIf -j is used this ID is required and will be used to match reads.\\nThis can be used in conjunction with the reaper %J format directive."
    format: "output format specification, syntax below\\n%R  read\\n%L  length\\n%C  number of occurrences\\n%T  trinucleotide score\\n%I  read identifier - numerical identifier constructed on output\\nCAVEAT read identifier could differ between runs depending on options\\nCAVEAT read identifier is not tied to the read sequence\\n%t  tab\\n%s  tab\\n%n  newline\\n%%  percentage character"
    no_tally: "reads are output as they are processed (use --with-quality to retain quality)\\nThis can be useful for matching up paired-end files with missing reads.\\nIt works only if record offset information was preserved and is read back in using %J\\nThe supported output directives (besides %n %s %t and %%) are these:\\n%R  read\\n%Q  quality\\n%I  identifier\\n%J  output offset\\nFilter options such as -tri and -si are NOT active"
    pair_by_offset: "assume the -i and -j input files match record-by-record\\nWith this option the %J directive is not needed\\n"
  }
  output {
    File out_stdout = stdout()
    File out_sum_stat = "${in_sum_stat}"
  }
}