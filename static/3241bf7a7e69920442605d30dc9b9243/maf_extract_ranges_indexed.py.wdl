version 1.0

task MafExtractRangesIndexedpy {
  input {
    Int? min_cols
    Boolean? chop
    String? src
    String? prefix
    File? dir
    Boolean? use_cache
    Directory directory
  }
  command <<<
    maf_extract_ranges_indexed_py \
      ~{directory} \
      ~{if defined(min_cols) then ("--mincols " +  '"' + min_cols + '"') else ""} \
      ~{if (chop) then "--chop" else ""} \
      ~{if defined(src) then ("--src " +  '"' + src + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if (use_cache) then "--usecache" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_cols: "Minimum length (columns) required for alignment to be\\noutput"
    chop: "Should blocks be chopped to only portion overlapping\\n(no by default)"
    src: "Use this src for all intervals"
    prefix: "Prepend this to each src before lookup"
    dir: "Write each interval as a separate file in this"
    use_cache: "Use a cache that keeps blocks of the MAF files in\\nmemory (requires ~20MB per MAF)\\n"
    directory: "-S, --strand          Strand is included as an additional column, and the"
  }
  output {
    File out_stdout = stdout()
  }
}