version 1.0

task Macs2Cmbreps {
  input {
    Array[File] macs_score_bedgraph
    String? method
    Directory? outdir
    File? ofile
  }
  command <<<
    macs2 cmbreps \
      ~{if defined(macs_score_bedgraph) then ("-i " +  '"' + macs_score_bedgraph + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    macs_score_bedgraph: "MACS score in bedGraph for each replicate. Require at\\nleast 2 files such as '-i A B C D'. REQUIRED"
    method: "Method to use while combining scores from replicates.\\n1) fisher: Fisher's combined probability test. It\\nrequires scores in ppois form (-log10 pvalues) from\\nbdgcmp. Other types of scores for this method may\\ncause cmbreps unexpected errors. 2) max: take the\\nmaximum value from replicates for each genomic\\nposition. 3) mean: take the average value. Note,\\nexcept for Fisher's method, max or mean will take\\nscores AS IS which means they won't convert scores\\nfrom log scale to linear scale or vice versa."
    outdir: "If specified all output files will be written to that\\ndirectory. Default: the current working directory"
    ofile: "Output BEDGraph filename for combined scores.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_ofile = "${in_ofile}"
  }
}