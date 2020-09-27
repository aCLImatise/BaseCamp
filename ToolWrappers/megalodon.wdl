version 1.0

task Megalodon {
  input {
    Float? guppy_config
    File? guppy_server_path
    String? outputs
    Directory? output_directory
    Directory? overwrite
    String? mappings_format
    File? reference
    Boolean? haploid
    File? variant_filename
    File? variant_calibration_filename
    Int? mod_motif
    File? mod_calibration_filename
    Boolean? help_long
    Int? processes
    Array[String] devices
    Int? verbose_read_progress
    Boolean? rna
    String data
  }
  command <<<
    megalodon \
      ~{data} \
      ~{if defined(guppy_config) then ("--guppy-config " +  '"' + guppy_config + '"') else ""} \
      ~{if defined(guppy_server_path) then ("--guppy-server-path " +  '"' + guppy_server_path + '"') else ""} \
      ~{if defined(outputs) then ("--outputs " +  '"' + outputs + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(mappings_format) then ("--mappings-format " +  '"' + mappings_format + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (haploid) then "--haploid" else ""} \
      ~{if defined(variant_filename) then ("--variant-filename " +  '"' + variant_filename + '"') else ""} \
      ~{if defined(variant_calibration_filename) then ("--variant-calibration-filename " +  '"' + variant_calibration_filename + '"') else ""} \
      ~{if defined(mod_motif) then ("--mod-motif " +  '"' + mod_motif + '"') else ""} \
      ~{if defined(mod_calibration_filename) then ("--mod-calibration-filename " +  '"' + mod_calibration_filename + '"') else ""} \
      ~{if (help_long) then "--help-long" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(devices) then ("--devices " +  '"' + devices + '"') else ""} \
      ~{if defined(verbose_read_progress) then ("--verbose-read-progress " +  '"' + verbose_read_progress + '"') else ""} \
      ~{if (rna) then "--rna" else ""}
  >>>
  parameter_meta {
    guppy_config: "Guppy config. Default: dna_r9.4.1_450bps_modbases_dam-\\ndcm-cpg_hac.cfg"
    guppy_server_path: "Path to guppy server executable. Default: ./ont-\\nguppy/bin/guppy_basecall_server"
    outputs: "[{basecalls,mod_basecalls,mappings,per_read_variants,variants,variant_mappings,per_read_mods,mods,mod_mappings,signal_mappings,per_read_refs} ...]\\nDesired output(s).\\nOptions:\\nbasecalls: Called bases (FASTA/Q)\\nmod_basecalls: Basecall-anchored modified base scores (HDF5)\\nmappings: Mapped reads (BAM/CRAM/SAM)\\nper_read_variants: Per-read, per-site sequence variant scores database\\nvariants: Sample-level aggregated sequence variant calls (VCF)\\nvariant_mappings: Per-read mappings annotated with variant calls\\nper_read_mods: Per-read, per-site modified base scores database\\nmods: Sample-level aggregated modified base calls (modVCF)\\nmod_mappings: Per-read mappings annotated with modified base calls\\nsignal_mappings: Signal mappings for taiyaki model training (HDF5)\\nper_read_refs: Per-read reference sequence for model training (FASTA)\\nDefault: ['basecalls']"
    output_directory: "Directory to store output results. Default:\\nmegalodon_results"
    overwrite: "Overwrite output directory if it exists."
    mappings_format: "Mappings output format. Choices: bam, cram, sam"
    reference: "Reference FASTA or minimap2 index file used for\\nmapping called reads."
    haploid: "Compute variant aggregation for haploid genotypes.\\nDefault: diploid"
    variant_filename: "Sequence variants to call for each read in VCF/BCF\\nformat (required for variant output)."
    variant_calibration_filename: "File containing emperical calibration for variant\\nscores. See `megalodon_extras calibrate variants`\\ncommand. Default: Load default calibration for\\nspecified guppy config."
    mod_motif: "MOTIF REL_POSITION\\nRestrict modified base calls to specified motif(s).\\nFor example to restrict to CpG sites use \\\"--mod-motif\\nZ CG 0\\\"."
    mod_calibration_filename: "File containing emperical calibration for modified\\nbase scores. See `megalodon_extras calibrate\\nmodified_bases` command. Default: Load default\\ncalibration for specified guppy config."
    help_long: "Show all options."
    processes: "Number of parallel processes. Default: 1"
    devices: "GPU devices for guppy or taiyaki basecalling backends."
    verbose_read_progress: "Output verbose output on read progress. Outputs N most\\ncommon points where reads could not be processed\\nfurther. Default: 3"
    rna: "RNA input data. Requires RNA model. Default: DNA input"
    data: "-v, --version         show megalodon version and exit."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    Directory out_overwrite = "${in_overwrite}"
  }
}