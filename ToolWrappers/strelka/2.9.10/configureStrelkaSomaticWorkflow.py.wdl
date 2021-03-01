version 1.0

task ConfigureStrelkaSomaticWorkflowpy {
  input {
    File? config
    Boolean? all_help
    File? normal_bam
    File? tumour_bam
    File? output_callable_regions
    File? reference_fast_a
    File? in_del_candidates
    File? forced_gt
    Boolean? targeted
    File? call_regions
    Directory? run_dir
  }
  command <<<
    configureStrelkaSomaticWorkflow_py \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (all_help) then "--allHelp" else ""} \
      ~{if defined(normal_bam) then ("--normalBam " +  '"' + normal_bam + '"') else ""} \
      ~{if defined(tumour_bam) then ("--tumourBam " +  '"' + tumour_bam + '"') else ""} \
      ~{if (output_callable_regions) then "--outputCallableRegions" else ""} \
      ~{if defined(reference_fast_a) then ("--referenceFasta " +  '"' + reference_fast_a + '"') else ""} \
      ~{if defined(in_del_candidates) then ("--indelCandidates " +  '"' + in_del_candidates + '"') else ""} \
      ~{if defined(forced_gt) then ("--forcedGT " +  '"' + forced_gt + '"') else ""} \
      ~{if (targeted) then "--targeted" else ""} \
      ~{if defined(call_regions) then ("--callRegions " +  '"' + call_regions + '"') else ""} \
      ~{if defined(run_dir) then ("--runDir " +  '"' + run_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "provide a configuration file to override defaults in\\nglobal config file (/usr/local/share/strelka-2.9.10-0/\\nbin/configureStrelkaSomaticWorkflow.py.ini)"
    all_help: "show all extended/hidden options"
    normal_bam: "Normal sample BAM or CRAM file. (no default)"
    tumour_bam: "Tumor sample BAM or CRAM file. [required] (no default)"
    output_callable_regions: "Output a bed file describing somatic callable regions\\nof the genome"
    reference_fast_a: "samtools-indexed reference fasta file [required]"
    in_del_candidates: "Specify a VCF of candidate indel alleles. These\\nalleles are always evaluated but only reported in the\\noutput when they are inferred to exist in the sample.\\nThe VCF must be tabix indexed. All indel alleles must\\nbe left-shifted/normalized, any unnormalized alleles\\nwill be ignored. This option may be specified more\\nthan once, multiple input VCFs will be merged.\\n(default: None)"
    forced_gt: "Specify a VCF of candidate alleles. These alleles are\\nalways evaluated and reported even if they are\\nunlikely to exist in the sample. The VCF must be tabix\\nindexed. All indel alleles must be left-\\nshifted/normalized, any unnormalized allele will\\ntrigger a runtime error. This option may be specified\\nmore than once, multiple input VCFs will be merged.\\nNote that for any SNVs provided in the VCF, the SNV\\nsite will be reported (and for gVCF, excluded from\\nblock compression), but the specific SNV alleles are\\nignored. (default: None)"
    targeted: "Set options for exome or other targeted input: note in\\nparticular that this flag turns off high-depth filters"
    call_regions: "Optionally provide a bgzip-compressed/tabix-indexed\\nBED file containing the set of regions to call. No VCF\\noutput will be provided outside of these regions. The\\nfull genome will still be used to estimate statistics\\nfrom the input (such as expected depth per\\nchromosome). Only one BED file may be specified.\\n(default: call the entire genome)"
    run_dir: "Name of directory to be created where all workflow\\nscripts and output will be written. Each analysis\\nrequires a separate directory. (default:\\nStrelkaSomaticWorkflow)"
  }
  output {
    File out_stdout = stdout()
    File out_output_callable_regions = "${in_output_callable_regions}"
    Directory out_run_dir = "${in_run_dir}"
  }
}