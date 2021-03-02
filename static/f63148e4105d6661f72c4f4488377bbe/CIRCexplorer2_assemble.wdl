version 1.0

task CIRCexplorer2Assemble {
  input {
    File? ref
    Directory? top_hat
    Directory? output_directory
    Int? thread
    Boolean? bb
    Int? chrom_size
    Boolean? remove_rrna
    Int? max_bundle_frags
  }
  command <<<
    CIRCexplorer2 assemble \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(top_hat) then ("--tophat " +  '"' + top_hat + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if (bb) then "--bb" else ""} \
      ~{if defined(chrom_size) then ("--chrom-size " +  '"' + chrom_size + '"') else ""} \
      ~{if (remove_rrna) then "--remove-rRNA" else ""} \
      ~{if defined(max_bundle_frags) then ("--max-bundle-frags " +  '"' + max_bundle_frags + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref: "Gene annotation file."
    top_hat: "TopHat mapping folder."
    output_directory: "Output directory. [default: assemble]"
    thread: "Running threads. [default: 10]"
    bb: "Convert assembly results to BigBed."
    chrom_size: "Chrom size file for converting to BigBed."
    remove_rrna: "Ignore rRNA during assembling (only for human hg19)."
    max_bundle_frags: "Cufflinks --max-bundle-frags option."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}