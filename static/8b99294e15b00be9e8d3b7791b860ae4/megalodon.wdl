version 1.0

task Megalodon {
  input {
    String? guppy_config
    String? guppy_server_path
    String? guppy_server_port
    String? output_directory
    Boolean? overwrite
    String? mappings_format
    String? reference
    Boolean? haploid
    String? variant_filename
    String? variant_calibration_filename
    String? mod_motif
    String? mod_calibration_filename
    Boolean? help_long
    String? processes
    Array[String] devices
    String? verbose_read_progress
    String fast_fives_dir
  }
  command <<<
    megalodon \
      ~{fast_fives_dir} \
      ~{if defined(guppy_config) then ("--guppy-config " +  '"' + guppy_config + '"') else ""} \
      ~{if defined(guppy_server_path) then ("--guppy-server-path " +  '"' + guppy_server_path + '"') else ""} \
      ~{if defined(guppy_server_port) then ("--guppy-server-port " +  '"' + guppy_server_port + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{true="--overwrite" false="" overwrite} \
      ~{if defined(mappings_format) then ("--mappings-format " +  '"' + mappings_format + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--haploid" false="" haploid} \
      ~{if defined(variant_filename) then ("--variant-filename " +  '"' + variant_filename + '"') else ""} \
      ~{if defined(variant_calibration_filename) then ("--variant-calibration-filename " +  '"' + variant_calibration_filename + '"') else ""} \
      ~{if defined(mod_motif) then ("--mod-motif " +  '"' + mod_motif + '"') else ""} \
      ~{if defined(mod_calibration_filename) then ("--mod-calibration-filename " +  '"' + mod_calibration_filename + '"') else ""} \
      ~{true="--help-long" false="" help_long} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(devices) then ("--devices " +  '"' + devices + '"') else ""} \
      ~{if defined(verbose_read_progress) then ("--verbose-read-progress " +  '"' + verbose_read_progress + '"') else ""}
  >>>
  parameter_meta {
    guppy_config: "Guppy config. Default: dna_r9.4.1_450bps_modbases_dam- dcm-cpg_hac.cfg"
    guppy_server_path: "Path to guppy server executable. Default: ./ont- guppy/bin/guppy_basecall_server"
    guppy_server_port: "Guppy server port. Default: 5555"
    output_directory: "Directory to store output results. Default: megalodon_results"
    overwrite: "Overwrite output directory if it exists."
    mappings_format: "Mappings output format. Choices: bam, cram, sam"
    reference: "Reference FASTA or minimap2 index file used for mapping called reads."
    haploid: "Compute variant aggregation for haploid genotypes. Default: diploid"
    variant_filename: "Sequence variants to call for each read in VCF/BCF format (required for variant output)."
    variant_calibration_filename: "File containing emperical calibration for variant scores. See megalodon/scripts/calibrate_variant_llr_scores.py. Default: Load default calibration for specified guppy config."
    mod_motif: "MOTIF REL_POSITION Restrict modified base calls to specified motif(s). For example to restrict to CpG sites use \"--mod-motif Z CG 0\"."
    mod_calibration_filename: "File containing emperical calibration for modified base scores. See megalodon/scripts/calibrate_mod_llr_scores.py. Default: Load default calibration for specified guppy config."
    help_long: "Show all options."
    processes: "Number of parallel processes. Default: 1"
    devices: "GPU devices for guppy or taiyaki basecalling backends."
    verbose_read_progress: "Output verbose output on read progress. Outputs N most common points where reads could not be processed further. Default: 3"
    fast_fives_dir: "Directory containing raw fast5 (will be searched recursively)."
  }
}