version 1.0

task Gstacks {
  input {
    Boolean? input_directory_containg
    Boolean? path_population_map
    Boolean? output_directory_default
    Boolean? threads
    Boolean? model
    Boolean? var_alpha
    Boolean? gt_alpha
    Boolean? rm_pcr_duplicates
    Boolean? rm_unpaired_reads
    Boolean? ignore_pe_reads
    Boolean? unpaired
  }
  command <<<
    gstacks \
      ~{true="-P" false="" input_directory_containg} \
      ~{true="-M" false="" path_population_map} \
      ~{true="-O" false="" output_directory_default} \
      ~{true="--threads" false="" threads} \
      ~{true="--model" false="" model} \
      ~{true="--var-alpha" false="" var_alpha} \
      ~{true="--gt-alpha" false="" gt_alpha} \
      ~{true="--rm-pcr-duplicates" false="" rm_pcr_duplicates} \
      ~{true="--rm-unpaired-reads" false="" rm_unpaired_reads} \
      ~{true="--ignore-pe-reads" false="" ignore_pe_reads} \
      ~{true="--unpaired" false="" unpaired}
  >>>
  parameter_meta {
    input_directory_containg: ": input directory containg '*.matches.bam' files created by the de novo Stacks pipeline, ustacks-cstacks-sstacks-tsv2bam"
    path_population_map: ": path to a population map giving the list of samples"
    output_directory_default: ": output directory (default: none with -B; with -P same as the input directory)"
    threads: ": number of threads to use (default: 1)"
    model: ": model to use to call variants and genotypes; one of marukilow (default), marukihigh, or snp"
    var_alpha: ": alpha threshold for discovering SNPs (default: 0.01 for marukilow)"
    gt_alpha: ": alpha threshold for calling genotypes (default: 0.05)"
    rm_pcr_duplicates: ": remove all but one set ofread pairs of the same sample that  have the same insert length (implies --rm-unpaired-reads)"
    rm_unpaired_reads: ": discard unpaired reads"
    ignore_pe_reads: ": ignore paired-end reads even if present in the input"
    unpaired: ": ignore read pairing (only for paired-end GBS; treat READ2's as if they were READ1's)"
  }
}