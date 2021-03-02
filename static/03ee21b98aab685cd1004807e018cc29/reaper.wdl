version 1.0

task Reaper {
  input {
    Int? geom
    File? file_geometrydependent_format
    File? input_stream_gzipped
    Int? clean_length
    Int? guard
    Int? restrict
    Int? tri
    Int? dust_suffix
    Int? nnn_check
    Boolean? three_p_global
    Boolean? three_p_prefix
    Int? three_p_barcode
    Int? five_p_barcode
    Boolean? mr_tabu
    Int? three_p_head_to_tail
    Int? swp
    Boolean? fast_a_in
    String? record_format
    Int? record_format_two
    String? basename
    String? format_clean
    Int? format_lint
    Boolean? debug
    String? sample
    Boolean? no_zip
    Boolean? no_qc
    Boolean? bcq_early
    Boolean? bcq_late
    Boolean? full_length
    Boolean? keep_all
    Int? trim_length
    Int? polya
    Int? sc_max
  }
  command <<<
    reaper \
      ~{if defined(geom) then ("-geom " +  '"' + geom + '"') else ""} \
      ~{if defined(file_geometrydependent_format) then ("-meta " +  '"' + file_geometrydependent_format + '"') else ""} \
      ~{if defined(input_stream_gzipped) then ("-i " +  '"' + input_stream_gzipped + '"') else ""} \
      ~{if defined(clean_length) then ("-clean-length " +  '"' + clean_length + '"') else ""} \
      ~{if defined(guard) then ("-guard " +  '"' + guard + '"') else ""} \
      ~{if defined(restrict) then ("-restrict " +  '"' + restrict + '"') else ""} \
      ~{if defined(tri) then ("-tri " +  '"' + tri + '"') else ""} \
      ~{if defined(dust_suffix) then ("-dust-suffix " +  '"' + dust_suffix + '"') else ""} \
      ~{if defined(nnn_check) then ("-nnn-check " +  '"' + nnn_check + '"') else ""} \
      ~{if (three_p_global) then "-3p-global" else ""} \
      ~{if (three_p_prefix) then "-3p-prefix" else ""} \
      ~{if defined(three_p_barcode) then ("-3p-barcode " +  '"' + three_p_barcode + '"') else ""} \
      ~{if defined(five_p_barcode) then ("-5p-barcode " +  '"' + five_p_barcode + '"') else ""} \
      ~{if (mr_tabu) then "-mr-tabu" else ""} \
      ~{if defined(three_p_head_to_tail) then ("-3p-head-to-tail " +  '"' + three_p_head_to_tail + '"') else ""} \
      ~{if defined(swp) then ("-swp " +  '"' + swp + '"') else ""} \
      ~{if (fast_a_in) then "--fasta-in" else ""} \
      ~{if defined(record_format) then ("-record-format " +  '"' + record_format + '"') else ""} \
      ~{if defined(record_format_two) then ("-record-format2 " +  '"' + record_format_two + '"') else ""} \
      ~{if defined(basename) then ("-basename " +  '"' + basename + '"') else ""} \
      ~{if defined(format_clean) then ("-format-clean " +  '"' + format_clean + '"') else ""} \
      ~{if defined(format_lint) then ("-format-lint " +  '"' + format_lint + '"') else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if defined(sample) then ("-sample " +  '"' + sample + '"') else ""} \
      ~{if (no_zip) then "--nozip" else ""} \
      ~{if (no_qc) then "--noqc" else ""} \
      ~{if (bcq_early) then "--bcq-early" else ""} \
      ~{if (bcq_late) then "--bcq-late" else ""} \
      ~{if (full_length) then "--full-length" else ""} \
      ~{if (keep_all) then "--keep-all" else ""} \
      ~{if defined(trim_length) then ("-trim-length " +  '"' + trim_length + '"') else ""} \
      ~{if defined(polya) then ("-polya " +  '"' + polya + '"') else ""} \
      ~{if defined(sc_max) then ("-sc-max " +  '"' + sc_max + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    geom: "mode in {no-bc, 3p-bc, 5p-bc}"
    file_geometrydependent_format: "file with geometry-dependent format. Required columns:\\nGeometry    Columns:\\nno-bc          3p-ad     -       -      -    tabu\\n3p-bc          3p-ad  barcode  3p-si    -    tabu\\n5p-bc          3p-ad  barcode    -    5p-si  tabu"
    input_stream_gzipped: "input stream (gzipped file allowed) (default STDIN)"
    clean_length: "minimum allowed clean length (default 0)"
    guard: "protect first <int> bases in read from adapter and tabu matching"
    restrict: "only use the first <int> bases of adapter or tabu sequence (default 18)\\nThis is to avoid false positive matches"
    tri: "filter out reads with tri-nt score > threshold\\na reasonable <threshold> is 35"
    dust_suffix: "dust theshold for read suffix (default 0, suggested 20)"
    nnn_check: "/<outof> (default 0/0)\\ndisregard read onwards from seeing <count> N's in <outof> bases"
    three_p_global: "l/e[/g[/o]]  (default 14/2/1/0)"
    three_p_prefix: "l/e[/g[/o]]  (default 8/2/0/2)"
    three_p_barcode: "/e[/g[/o]]  (default 0/6/1/0)"
    five_p_barcode: "/e[/g[/o]]  (default 0/0/0/2)"
    mr_tabu: "l/e[/g[/o]]  (default 16/2/1/0)"
    three_p_head_to_tail: "minimal trailing perfect match length (default 0)\\nsyntax used in the above:\\nl  <int> minimum length required to count sub-alignment as match\\ne  <int> maximum allowed edit distance\\ng  <int> [optional, not active when set to 0] maximum allowed number of gaps\\no  <int> [optional, not active when set to 0] offset:\\no= 5  requires alignment to start in the first five bases of adaptor\\no=-5  requires alignment to end in the last five bases of adaptor"
    swp: "/S/G match/substitution/gap gain/cost/cost (default 4/1/3)"
    fast_a_in: "read FASTA input"
    record_format: "(record description, default @%I%A%n%R%n+%#%Q%n)\\n[ -record-format syntax is output when supplying --record-format ]"
    record_format_two: "(simple line formats, one field per line):\\nR  read\\nI  read identifier\\nQ  quality scores\\nD  discard field"
    basename: "pfx.lint.gz, pfx.clean.gz pfx.report etc will be constructed"
    format_clean: "(output for clean reads)"
    format_lint: "(output for filtered reads)\\n-format-clean/lint specification syntax:\\n%R  read\\n%C  clean read\\n%Z  clean read padded with Ns if necessary\\n%V  reverse complement of clean read\\n%I  read identifier\\n%Q  clean or input read quality (for clean / lint file respectively)\\n%X  read count (only applicable if -record-format is used)\\n%Y  input read quality\\n%q<c>  clean input read quality padded with character <c>\\n%A  annotation field\\n%L  clean read length\\n%M  message describing cause for filtering (lint file)\\n%T  trinucleotide complexity score (clean/lint file)\\n%U  dUst sUffix complexity information\\n%3  best read/3p-adaptor alignment\\n%=  alignment characteristics\\nmt=matchtype\\nsc=suffix-complexity\\nht=head-tail-match\\nnn=N-match-offset\\nbb=B-match-offset\\naa=Polya-offset\\nqq=Quality-trim-offset\\n%n  newline\\n%J  record offset, unique for each read. Use to match paired-end reads\\n%f  fastq line number based on standard fastq format\\n%t  tab\\n%%  percent sign\\nAnything else is copied verbatim"
    debug: "[acl]+     a=alignments c=clean l=lint"
    sample: "/l       if debug, sample every c/l clean/lint read"
    no_zip: "do not output gzipped files"
    no_qc: "do not output quality report files"
    bcq_early: "perform early 'B' quality filtering (when reading sequences)"
    bcq_late: "perform late 'B' quality filtering (before outputting sequences)"
    full_length: "only allow reads not shortened in any filter step"
    keep_all: "delete rather than discard reads (e.g. tabu match, missing 5p-sinsert)"
    trim_length: "cut reads back to length <int>"
    polya: "remove trailing A's if length exceeds <int>"
    sc_max: "threshold for complexity of suffix following prefix match (default 0.25)"
  }
  output {
    File out_stdout = stdout()
  }
}