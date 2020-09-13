version 1.0

task Mergepairssh {
  input {
    Int? offset
    Boolean? stdout
    Boolean? decompress
    Boolean? force
    Boolean? index
    File? index_name
    Int? compress_level
    Boolean? re_index
    Boolean? reb_gzip
    Int? size
    Int? threads
    Boolean? test
    String? preset_pairs_mergednodups
    Int? e
    Int? start_column
    Int? v
    Boolean? delimiter_space_instead
    Boolean? query_region_string
    Int? skip_first_int
    String? symbol_query_region
    Boolean? zerobased_coordinate
    Boolean? print_only_lines
    Boolean? print_only_number
    Boolean? print_only_region
    Boolean? only_check_occurs
    Boolean? print_only_count
    Boolean? autoflip_query_exist
  }
  command <<<
    merge_pairs_sh \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (decompress) then "--decompress" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if defined(index_name) then ("--index-name " +  '"' + index_name + '"') else ""} \
      ~{if defined(compress_level) then ("--compress-level " +  '"' + compress_level + '"') else ""} \
      ~{if (re_index) then "--reindex" else ""} \
      ~{if (reb_gzip) then "--rebgzip" else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if defined(preset_pairs_mergednodups) then ("-p " +  '"' + preset_pairs_mergednodups + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(start_column) then ("-u " +  '"' + start_column + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if (delimiter_space_instead) then "-T" else ""} \
      ~{if (query_region_string) then "-L" else ""} \
      ~{if defined(skip_first_int) then ("-S " +  '"' + skip_first_int + '"') else ""} \
      ~{if defined(symbol_query_region) then ("-w " +  '"' + symbol_query_region + '"') else ""} \
      ~{if (zerobased_coordinate) then "-0" else ""} \
      ~{if (print_only_lines) then "-H" else ""} \
      ~{if (print_only_number) then "-B" else ""} \
      ~{if (print_only_region) then "-W" else ""} \
      ~{if (only_check_occurs) then "-Y" else ""} \
      ~{if (print_only_count) then "-n" else ""} \
      ~{if (autoflip_query_exist) then "-a" else ""}
  >>>
  parameter_meta {
    offset: "decompress at virtual file pointer (0-based uncompressed offset)"
    stdout: "write on standard output, keep original files unchanged"
    decompress: "decompress"
    force: "overwrite files without asking"
    index: "compress and create BGZF index"
    index_name: "name of BGZF index file [file.gz.gzi]"
    compress_level: "Compression level to use when compressing; 0 to 9, or -1 for default [-1]"
    re_index: "(re)index compressed file"
    reb_gzip: "use an index file to bgzip a file"
    size: "decompress INT bytes (uncompressed size)"
    threads: "number of compression threads to use [1]"
    test: "test integrity of compressed file"
    preset_pairs_mergednodups: "preset: pairs, merged_nodups, old_merged_nodups, gff, bed, sam, vcf, psltbl [gff]"
    e: "end1 column; can be identical to '-b' [5]"
    start_column: "start2 column [null]"
    v: "end2 column; can be identical to '-u' [null or identical to the start2 specified by -u]"
    delimiter_space_instead: "delimiter is space instead of tab."
    query_region_string: "query region is not a string but a file listing query regions"
    skip_first_int: "skip first INT lines [0]"
    symbol_query_region: "symbol for query region separator [|]"
    zerobased_coordinate: "zero-based coordinate"
    print_only_lines: "print only the header lines"
    print_only_number: "print only the number of bgzf blocks for existing chromosome (pairs)"
    print_only_region: "print only the region split character"
    only_check_occurs: "Only check if the file is a triangle (i.e. a chromosome pair occurs only in one direction (e.g. if chr1|chr2 exists, chr2|chr1 doesn't))"
    print_only_count: "print only the total line count (same as gunzip -c | wc -l but much faster)"
    autoflip_query_exist: "autoflip query when the matching chromosome pair doesn't exist"
  }
  output {
    File out_stdout = stdout()
  }
}