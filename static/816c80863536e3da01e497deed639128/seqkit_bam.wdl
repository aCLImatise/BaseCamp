version 1.0

task SeqkitBam {
  input {
    Int? bins
    Int? bundle
    File? count
    Int? delay
    Boolean? dump
    File? exclude_ids
    String? exec_after
    String? exec_before
    String? field
    File? grep_ids
    Boolean? idx_count
    Boolean? idx_stat
    File? img
    Boolean? list_fields
    Boolean? log
    Int? map_qual
    Boolean? pass
    Boolean? pretty
    Boolean? prim_only
    Int? print_freq
    Boolean? quiet_mode
    Float? range_max
    Float? range_min
    Boolean? reset
    Boolean? silent_mode
    Boolean? stat
    String? tool
    File? top_bam
    Int? alphabet_guess_seq_length
    Boolean? id_ncbi
    String? id_regexp
    File? in_file_list
    Int? line_width
    File? out_file
    Boolean? quiet
    String? seq_type
    Int? threads
  }
  command <<<
    seqkit bam \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""} \
      ~{if defined(bundle) then ("--bundle " +  '"' + bundle + '"') else ""} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if defined(delay) then ("--delay " +  '"' + delay + '"') else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if defined(exclude_ids) then ("--exclude-ids " +  '"' + exclude_ids + '"') else ""} \
      ~{if defined(exec_after) then ("--exec-after " +  '"' + exec_after + '"') else ""} \
      ~{if defined(exec_before) then ("--exec-before " +  '"' + exec_before + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if defined(grep_ids) then ("--grep-ids " +  '"' + grep_ids + '"') else ""} \
      ~{if (idx_count) then "--idx-count" else ""} \
      ~{if (idx_stat) then "--idx-stat" else ""} \
      ~{if defined(img) then ("--img " +  '"' + img + '"') else ""} \
      ~{if (list_fields) then "--list-fields" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if defined(map_qual) then ("--map-qual " +  '"' + map_qual + '"') else ""} \
      ~{if (pass) then "--pass" else ""} \
      ~{if (pretty) then "--pretty" else ""} \
      ~{if (prim_only) then "--prim-only" else ""} \
      ~{if defined(print_freq) then ("--print-freq " +  '"' + print_freq + '"') else ""} \
      ~{if (quiet_mode) then "--quiet-mode" else ""} \
      ~{if defined(range_max) then ("--range-max " +  '"' + range_max + '"') else ""} \
      ~{if defined(range_min) then ("--range-min " +  '"' + range_min + '"') else ""} \
      ~{if (reset) then "--reset" else ""} \
      ~{if (silent_mode) then "--silent-mode" else ""} \
      ~{if (stat) then "--stat" else ""} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""} \
      ~{if defined(top_bam) then ("--top-bam " +  '"' + top_bam + '"') else ""} \
      ~{if defined(alphabet_guess_seq_length) then ("--alphabet-guess-seq-length " +  '"' + alphabet_guess_seq_length + '"') else ""} \
      ~{if (id_ncbi) then "--id-ncbi" else ""} \
      ~{if defined(id_regexp) then ("--id-regexp " +  '"' + id_regexp + '"') else ""} \
      ~{if defined(in_file_list) then ("--infile-list " +  '"' + in_file_list + '"') else ""} \
      ~{if defined(line_width) then ("--line-width " +  '"' + line_width + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(seq_type) then ("--seq-type " +  '"' + seq_type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    bins: "number of histogram bins (default -1)"
    bundle: "partition BAM file into loci (-1) or bundles with this minimum size"
    count: "count reads per reference and save to this file"
    delay: "sleep this many seconds after plotting (default 1)"
    dump: "print histogram data to stderr instead of plotting"
    exclude_ids: "exclude records with IDs contained in this file"
    exec_after: "execute command after reporting"
    exec_before: "execute command before reporting"
    field: "target fields"
    grep_ids: "only keep records with IDs contained in this file"
    idx_count: "fast read per reference counting based on the BAM index"
    idx_stat: "fast statistics based on the BAM index"
    img: "save histogram to this PDF/image file"
    list_fields: "list all available BAM record features"
    log: "log10(x+1) transform numeric values"
    map_qual: "minimum mapping quality"
    pass: "passthrough mode (forward filtered BAM to output)"
    pretty: "pretty print certain TSV outputs"
    prim_only: "filter out non-primary alignment records"
    print_freq: "print/report after this many records (-1 for print after EOF) (default -1)"
    quiet_mode: "supress all plotting to stderr"
    range_max: "discard record with field (-f) value greater than this flag (default NaN)"
    range_min: "discard record with field (-f) value less than this flag (default NaN)"
    reset: "reset histogram after every report"
    silent_mode: "supress TSV output to stderr"
    stat: "print BAM satistics of the input files"
    tool: "invoke toolbox in YAML format (see documentation)"
    top_bam: "save the top -? records to this bam file"
    alphabet_guess_seq_length: "length of sequence prefix of the first FASTA record based on which seqkit guesses the sequence type (0 for whole seq) (default 10000)"
    id_ncbi: "FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud..."
    id_regexp: "regular expression for parsing ID (default \\\"^(\\\\S+)\\\\s?\\\")"
    in_file_list: "file of input files list (one file per line), if given, they are appended to files from cli arguments"
    line_width: "line width when outputing FASTA format (0 for no wrap) (default 60)"
    out_file: "out file (\\\"-\\\" for stdout, suffix .gz for gzipped out) (default \\\"-\\\")"
    quiet: "be quiet and do not show extra information"
    seq_type: "sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect by the first sequence) (default \\\"auto\\\")"
    threads: "number of CPUs. (default value: 1 for single-CPU PC, 2 for others. can also set with environment variable SEQKIT_THREADS) (default 2)"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}