version 1.0

task MimoddConvert {
  input {
    String? i_format
    File? ofile
    String? o_format
    File? header
    Boolean? split_on_rgs
    Int? threads
    String convert
  }
  command <<<
    mimodd convert \
      ~{convert} \
      ~{if defined(i_format) then ("--iformat " +  '"' + i_format + '"') else ""} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if defined(o_format) then ("--oformat " +  '"' + o_format + '"') else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if (split_on_rgs) then "--split-on-rgs" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    i_format: "the format of the input file(s) (default: bam)"
    ofile: "redirect the output to the specified file (default:\\nstdout)"
    o_format: "the output format (default: sam)"
    header: "optional SAM file, the header information of which\\nshould be used in the output (will overwrite pre-\\nexisting header information from the input file); not\\nallowed for input in SAM/BAM format"
    split_on_rgs: "if the input file has reads from different read\\ngroups, write them to separate output files (using\\n--ofile OFILE as a file name template); implied for\\nconversions to fastq format"
    threads: "the number of threads to use (overrides config\\nsetting; ignored if not applicable to the conversion)\\n"
    convert: ""
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
  }
}