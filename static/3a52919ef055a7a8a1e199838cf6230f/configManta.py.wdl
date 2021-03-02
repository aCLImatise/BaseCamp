version 1.0

task ConfigMantapy {
  input {
    File? config
    Boolean? all_help
    File? normal_bam
    File? tumour_bam
    Boolean? exo_me
    Boolean? rna
    Boolean? un_stranded_rna
    File? reference_fast_a
    Directory? run_dir
    File? call_regions
  }
  command <<<
    configManta_py \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (all_help) then "--allHelp" else ""} \
      ~{if defined(normal_bam) then ("--normalBam " +  '"' + normal_bam + '"') else ""} \
      ~{if defined(tumour_bam) then ("--tumourBam " +  '"' + tumour_bam + '"') else ""} \
      ~{if (exo_me) then "--exome" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (un_stranded_rna) then "--unstrandedRNA" else ""} \
      ~{if defined(reference_fast_a) then ("--referenceFasta " +  '"' + reference_fast_a + '"') else ""} \
      ~{if defined(run_dir) then ("--runDir " +  '"' + run_dir + '"') else ""} \
      ~{if defined(call_regions) then ("--callRegions " +  '"' + call_regions + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "provide a configuration file to override defaults in\\nglobal config file (/usr/local/share/manta-1.6.0-0/bin\\n/configManta.py.ini)"
    all_help: "show all extended/hidden options"
    normal_bam: "Normal sample BAM or CRAM file. May be specified more\\nthan once, multiple inputs will be treated as each BAM\\nfile representing a different sample. [optional] (no\\ndefault)"
    tumour_bam: "Tumor sample BAM or CRAM file. Only up to one tumor\\nbam file accepted. [optional] (no default)"
    exo_me: "Set options for WES input: turn off depth filters"
    rna: "Set options for RNA-Seq input. Must specify exactly\\none bam input file"
    un_stranded_rna: "Set if RNA-Seq input is unstranded: Allows splice-\\njunctions on either strand"
    reference_fast_a: "samtools-indexed reference fasta file [required]"
    run_dir: "Name of directory to be created where all workflow\\nscripts and output will be written. Each analysis\\nrequires a separate directory. (default:\\nMantaWorkflow)"
    call_regions: "Optionally provide a bgzip-compressed/tabix-indexed\\nBED file containing the set of regions to call. No VCF\\noutput will be provided outside of these regions. The\\nfull genome will still be used to estimate statistics\\nfrom the input (such as expected fragment size\\ndistribution). Only one BED file may be specified.\\n(default: call the entire genome)"
  }
  output {
    File out_stdout = stdout()
    Directory out_run_dir = "${in_run_dir}"
  }
}