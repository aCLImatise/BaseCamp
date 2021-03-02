version 1.0

task BedToBigBed {
  input {
    Int? type
    String? you_have_nonstandard
    Int? block_size
    Int? items_per_slot
    Boolean? unc
    Boolean? tab
    String? extra_index
    Boolean? sizes_is_two_bit
    Boolean? udc_dir
    String in_dot_bed
    String chrom_dot_sizes
  }
  command <<<
    bedToBigBed \
      ~{in_dot_bed} \
      ~{chrom_dot_sizes} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if defined(you_have_nonstandard) then ("-as " +  '"' + you_have_nonstandard + '"') else ""} \
      ~{if defined(block_size) then ("-blockSize " +  '"' + block_size + '"') else ""} \
      ~{if defined(items_per_slot) then ("-itemsPerSlot " +  '"' + items_per_slot + '"') else ""} \
      ~{if (unc) then "-unc" else ""} \
      ~{if (tab) then "-tab" else ""} \
      ~{if defined(extra_index) then ("-extraIndex " +  '"' + extra_index + '"') else ""} \
      ~{if (sizes_is_two_bit) then "-sizesIs2Bit" else ""} \
      ~{if (udc_dir) then "-udcDir" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    type: "[+[P]] :\\nN is between 3 and 15,\\noptional (+) if extra \\\"bedPlus\\\" fields,\\noptional P specifies the number of extra fields. Not required, but preferred.\\nExamples: -type=bed6 or -type=bed6+ or -type=bed6+3\\n(see http://genome.ucsc.edu/FAQ/FAQformat.html#format1)"
    you_have_nonstandard: "- If you have non-standard \\\"bedPlus\\\" fields, it's great to put a definition\\nof each field in a row in AutoSql format here."
    block_size: "- Number of items to bundle in r-tree.  Default 256"
    items_per_slot: "- Number of data points bundled at lowest level. Default 512"
    unc: "- If set, do not use compression."
    tab: "- If set, expect fields to be tab separated, normally\\nexpects white space separator."
    extra_index: "- If set, make an index on each field in a comma separated list\\nextraIndex=name and extraIndex=name,id are commonly used."
    sizes_is_two_bit: "-- If set, the chrom.sizes file is assumed to be a 2bit file."
    udc_dir: "=/path/to/udcCacheDir  -- sets the UDC cache dir for caching of remote files."
    in_dot_bed: ""
    chrom_dot_sizes: ""
  }
  output {
    File out_stdout = stdout()
  }
}