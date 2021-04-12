version 1.0

task CoolerDump {
  input {
    Boolean? table
    String? columns
    Boolean? header
    String? na_rep
    Float? float_format
    Int? range
    Int? range_two
    Boolean? matrix
    Boolean? no_balance
    Boolean? join
    Int? annotate
    Boolean? one_based_ids
    Int? chunksize
    File? out
    String based_dot
  }
  command <<<
    cooler dump \
      ~{based_dot} \
      ~{if (table) then "--table" else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(na_rep) then ("--na-rep " +  '"' + na_rep + '"') else ""} \
      ~{if defined(float_format) then ("--float-format " +  '"' + float_format + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(range_two) then ("--range2 " +  '"' + range_two + '"') else ""} \
      ~{if (matrix) then "--matrix" else ""} \
      ~{if (no_balance) then "--no-balance" else ""} \
      ~{if (join) then "--join" else ""} \
      ~{if defined(annotate) then ("--annotate " +  '"' + annotate + '"') else ""} \
      ~{if (one_based_ids) then "--one-based-ids" else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0"
  }
  parameter_meta {
    table: "[chroms|bins|pixels]\\nWhich table to dump. Choosing 'chroms' or\\n'bins' will cause all pixel-related options\\nto be ignored. Note that for coolers stored\\nin symmetric-upper mode, 'pixels' only holds\\nthe upper triangle values of the matrix.\\n[default: pixels]"
    columns: "[,]      Restrict output to a subset of columns,\\nprovided as a comma-separated list."
    header: "Print the header of column names as the\\nfirst row.  [default: False]"
    na_rep: "Missing data representation. Default is\\nempty ''."
    float_format: "Format string for floating point numbers\\n(e.g. '.12g', '03.2f').  [default: g]"
    range: "The coordinates of a genomic region shown\\nalong the row dimension, in UCSC-style\\nnotation. (Example:\\nchr1:10,000,000-11,000,000). If omitted, the\\nentire contact matrix is printed."
    range_two: "The coordinates of a genomic region shown\\nalong the column dimension. If omitted, the\\ncolumn range is the same as the row range."
    matrix: "For coolers stored in symmetric-upper mode,\\nensure any empty areas of the genomic query\\nwindow are populated by generating the\\nlower-triangular pixels.  [default: False]"
    no_balance: "Apply balancing weights to data. This will\\nprint an extra column called `balanced`\\n[default: False]"
    join: "Print the full chromosome bin coordinates\\ninstead of bin IDs. This will replace the\\n`bin1_id` column with `chrom1`, `start1`,\\nand `end1`, and the `bin2_id` column with\\n`chrom2`, `start2` and `end2`.  [default:\\nFalse]"
    annotate: "[,]         Join additional columns from the bin table\\nagainst the pixels. Provide a comma\\nseparated list of column names (no spaces).\\nThe merged columns will be suffixed by '1'\\nand '2' accordingly."
    one_based_ids: "Print bin IDs as one-based rather than zero-"
    chunksize: "Sets the amount of pixel data loaded from\\ndisk at one time. Can affect the performance\\nof joins on high resolution datasets.\\nDefault is to load as many rows as there are\\nbins."
    out: "Output text file If .gz extension is\\ndetected, file is written using zlib.\\nDefault behavior is to stream to stdout."
    based_dot: "--one-based-starts              Print start coordinates as one-based rather"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}