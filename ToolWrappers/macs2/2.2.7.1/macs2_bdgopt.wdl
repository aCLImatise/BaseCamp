version 1.0

task Macs2Bdgopt {
  input {
    File? i_file
    String? method
    Boolean? extra_parameter_method
    Directory? outdir
    File? output_bedgraph_filename
    String optional_arguments
  }
  command <<<
    macs2 bdgopt \
      ~{optional_arguments} \
      ~{if defined(i_file) then ("--ifile " +  '"' + i_file + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if (extra_parameter_method) then "-p" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(output_bedgraph_filename) then ("--ofile " +  '"' + output_bedgraph_filename + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i_file: "MACS score in bedGraph. Note: this must be a bedGraph\\nfile covering the ENTIRE genome. REQUIRED"
    method: "Method to modify the score column of bedGraph file.\\nAvailable choices are: multiply, add, max, min, or\\np2q. 1) multiply, the EXTRAPARAM is required and will\\nbe multiplied to the score column. If you intend to\\ndivide the score column by X, use value of 1/X as\\nEXTRAPARAM. 2) add, the EXTRAPARAM is required and\\nwill be added to the score column. If you intend to\\nsubtract the score column by X, use value of -X as\\nEXTRAPARAM. 3) max, the EXTRAPARAM is required and\\nwill take the maximum value between score and the\\nEXTRAPARAM. 4) min, the EXTRAPARAM is required and\\nwill take the minimum value between score and the\\nEXTRAPARAM. 5) p2q, this will convert p-value scores\\nto q-value scores using Benjamini-Hochberg process.\\nThe EXTRAPARAM is not required. This method assumes\\nthe scores are -log10 p-value from MACS2. Any other\\ntypes of score will cause unexpected errors."
    extra_parameter_method: "[EXTRAPARAM [EXTRAPARAM ...]], --extra-param [EXTRAPARAM [EXTRAPARAM ...]]\\nThe extra parameter for METHOD. Check the detail of -m\\noption."
    outdir: "If specified all output files will be written to that\\ndirectory. Default: the current working directory"
    output_bedgraph_filename: "Output BEDGraph filename.\\n"
    optional_arguments: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_output_bedgraph_filename = "${in_output_bedgraph_filename}"
  }
}