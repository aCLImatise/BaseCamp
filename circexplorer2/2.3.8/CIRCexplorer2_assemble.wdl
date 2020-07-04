version 1.0

task CIRCexplorer2Assemble {
  input {
    String? ref
    String? top_hat
    String? output_directory
    String? thread
    Boolean? bb
    String? chrom_size
    Boolean? remove_rrna
    String? max_bundle_frags
  }
  command <<<
    CIRCexplorer2 assemble \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(top_hat) then ("--tophat " +  '"' + top_hat + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{true="--bb" false="" bb} \
      ~{if defined(chrom_size) then ("--chrom-size " +  '"' + chrom_size + '"') else ""} \
      ~{true="--remove-rRNA" false="" remove_rrna} \
      ~{if defined(max_bundle_frags) then ("--max-bundle-frags " +  '"' + max_bundle_frags + '"') else ""}
  >>>
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
}