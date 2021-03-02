version 1.0

task Correctpy {
  input {
    Boolean? prepend
    Int? dist
    Int? mapq
    Int? pos
    String? choose_by
    Boolean? no_check_ids
    Int? limit
    Boolean? structures
    Boolean? struct_human
    String? viz_format
    Boolean? verbose
    Boolean? phone_home
    Boolean? galaxy
    Boolean? test
    String families
    String reads
    String sam
  }
  command <<<
    correct_py \
      ~{families} \
      ~{reads} \
      ~{sam} \
      ~{if (prepend) then "--prepend" else ""} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(pos) then ("--pos " +  '"' + pos + '"') else ""} \
      ~{if defined(choose_by) then ("--choose-by " +  '"' + choose_by + '"') else ""} \
      ~{if (no_check_ids) then "--no-check-ids" else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (structures) then "--structures" else ""} \
      ~{if (struct_human) then "--struct-human" else ""} \
      ~{if defined(viz_format) then ("--viz-format " +  '"' + viz_format + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (phone_home) then "--phone-home" else ""} \
      ~{if (galaxy) then "--galaxy" else ""} \
      ~{if (test) then "--test" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prepend: "Prepend the corrected barcodes and orders to the\\noriginal columns."
    dist: "NM edit distance threshold. Default: 1"
    mapq: "MAPQ threshold. Default: 20"
    pos: "POS tolerance. Alignments will be ignored if abs(POS -\\n1) is greater than this value. Set to greater than the\\nbarcode length for no threshold. Default: 2"
    choose_by: "Choose the \\\"correct\\\" barcode in a network of related\\nbarcodes by either the count of how many times the\\nbarcode was observed (\\\"freq\\\") or how connected the\\nbarcode is to the others in the network (\\\"connect\\\")."
    no_check_ids: "Don't check to make sure read pairs have identical\\nids. By default, if this encounters a pair of reads in\\nfamilies.tsv with ids that aren't identical (minus an\\nending /1 or /2), it will throw an error."
    limit: "Limit the number of lines that will be read from each\\ninput file, for testing purposes."
    structures: "Print a list of the unique isoforms"
    struct_human: "[networks.png], --visualize [networks.png]\\nProduce a visualization of the unique structures and\\nwrite the image to this file. If you omit a filename,\\nit will be displayed in a window."
    viz_format: "Print log messages to this file instead of to stderr.\\nWarning: Will overwrite the file."
    verbose: "Print debug messages (very verbose)."
    phone_home: "Report helpful usage data to the developer, to better\\nunderstand the use cases and performance of the tool.\\nThe only data which will be recorded is the name and\\nversion of the tool, the size of the input data, the\\ntime and memory taken to process it, and the IP\\naddress of the machine running it. Also, if the script\\nfails, it will report the name of the exception thrown\\nand the line of code it occurred in. No parameters or\\nfilenames are sent. All the reporting and recording\\ncode is available at https://github.com/NickSto/ET."
    galaxy: "Tell the script it's running on Galaxy. Currently this\\nonly affects data reported when phoning home."
    test: "If reporting usage data, mark this as a test run."
    families: "The sorted output of make-barcodes.awk. The important\\npart is that it's a tab-delimited file with at least 2\\ncolumns: the barcode sequence and order, and it must\\nbe sorted in the same order as the \\\"reads\\\" in the SAM\\nfile."
    reads: "The fasta/q file given to the aligner. Used to get\\nbarcode sequences from read names."
    sam: "Barcode alignment, in SAM format. Omit to read from\\nstdin. The read names must be integers, representing\\nthe (1-based) order they appear in the families file."
  }
  output {
    File out_stdout = stdout()
  }
}