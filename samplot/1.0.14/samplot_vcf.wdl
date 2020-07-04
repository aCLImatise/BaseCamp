version 1.0

task SamplotVcf {
  input {
    String? vcf
    String? out_dir
    String? ped
    Boolean? dn_only
    Int? min_call_rate
    String? filter
    String? output_type
    Int? max_he_ts
    Int? min_entries
    Int? max_entries
    Int? max_mb
    Int? min_bp
    String? important_regions
    Array[String] bams
    Array[String] sample_ids
    String? command_file
    String? format
    String? gff
    String? down_sample
    Boolean? manual_run
  }
  command <<<
    samplot vcf \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(ped) then ("--ped " +  '"' + ped + '"') else ""} \
      ~{true="--dn_only" false="" dn_only} \
      ~{if defined(min_call_rate) then ("--min_call_rate " +  '"' + min_call_rate + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(output_type) then ("--output_type " +  '"' + output_type + '"') else ""} \
      ~{if defined(max_he_ts) then ("--max_hets " +  '"' + max_he_ts + '"') else ""} \
      ~{if defined(min_entries) then ("--min_entries " +  '"' + min_entries + '"') else ""} \
      ~{if defined(max_entries) then ("--max_entries " +  '"' + max_entries + '"') else ""} \
      ~{if defined(max_mb) then ("--max_mb " +  '"' + max_mb + '"') else ""} \
      ~{if defined(min_bp) then ("--min_bp " +  '"' + min_bp + '"') else ""} \
      ~{if defined(important_regions) then ("--important_regions " +  '"' + important_regions + '"') else ""} \
      ~{if defined(bams) then ("--bams " +  '"' + bams + '"') else ""} \
      ~{if defined(sample_ids) then ("--sample_ids " +  '"' + sample_ids + '"') else ""} \
      ~{if defined(command_file) then ("--command_file " +  '"' + command_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(down_sample) then ("--downsample " +  '"' + down_sample + '"') else ""} \
      ~{true="--manual_run" false="" manual_run}
  >>>
  parameter_meta {
    vcf: "VCF file containing structural variants (default: None)"
    out_dir: "path to write output PNGs (default: samplot-out)"
    ped: "path ped (or .fam) file (default: None)"
    dn_only: "plots only putative de novo variants (PED file required) (default: False)"
    min_call_rate: "only plot variants with at least this call-rate (default: 0.95)"
    filter: "simple filter that samples must meet. Join multiple filters with '&' and specify --filter multiple times for 'or' e.g. DHFFC < 0.7 & SVTYPE = 'DEL' (default: [])"
    output_type: "type of output figure (default: png)"
    max_he_ts: "only plot variants with at most this many heterozygotes (default: None)"
    min_entries: "try to include homref samples as controls to get this many samples in plot (default: 6)"
    max_entries: "only plot at most this many heterozygotes (default: 10)"
    max_mb: "skip variants longer than this many megabases (default: 1)"
    min_bp: "skip variants shorter than this many bases (default: 20)"
    important_regions: "only report variants that overlap regions in this bed file (default: None)"
    bams: "Space-delimited list of BAM/CRAM file names (default: None)"
    sample_ids: "Space-delimited list of sample IDs, must have same order as BAM/CRAM file names. BAM RG tag required if this is omitted. (default: None)"
    command_file: "store commands in this file. (default: samplot_vcf_cmds.tmp)"
    format: "comma separated list of FORMAT fields to include in sample plot title (default: AS,AP,DHFFC)"
    gff: "genomic regions (.gff with .tbi in same directory) used when building HTML table and table filters (default: None)"
    down_sample: "Number of normal reads/pairs to plot (default: 1)"
    manual_run: "don't auto-run the samplot plot commands (command_file will be deleted) (default: False)"
  }
}