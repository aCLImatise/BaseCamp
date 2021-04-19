version 1.0

task SamplotVcf {
  input {
    File? vcf
    File? out_dir
    File? ped
    Boolean? dn_only
    Int? min_call_rate
    Float? filter
    String? output_type
    Int? max_he_ts
    Int? min_entries
    Int? max_entries
    Int? max_mb
    Int? min_bp
    File? important_regions
    Array[String] bams
    Array[String] sample_ids
    File? command_file
    String? format
    Int? gff_three
    Int? down_sample
    Boolean? manual_run
    Boolean? debug
  }
  command <<<
    samplot vcf \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(ped) then ("--ped " +  '"' + ped + '"') else ""} \
      ~{if (dn_only) then "--dn_only" else ""} \
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
      ~{if defined(gff_three) then ("--gff3 " +  '"' + gff_three + '"') else ""} \
      ~{if defined(down_sample) then ("--downsample " +  '"' + down_sample + '"') else ""} \
      ~{if (manual_run) then "--manual_run" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samplot:1.1.6--pyh5e36f6f_0"
  }
  parameter_meta {
    vcf: "VCF file containing structural variants (default:\\nNone)"
    out_dir: "path to write output PNGs (default: samplot-out)"
    ped: "path ped (or .fam) file (default: None)"
    dn_only: "plots only putative de novo variants (PED file\\nrequired) (default: False)"
    min_call_rate: "only plot variants with at least this call-rate\\n(default: 0.95)"
    filter: "simple filter that samples must meet. Join multiple\\nfilters with '&' and specify --filter multiple times\\nfor 'or' e.g. DHFFC < 0.7 & SVTYPE = 'DEL' (default:\\n[])"
    output_type: "type of output figure (default: png)"
    max_he_ts: "only plot variants with at most this many\\nheterozygotes (default: None)"
    min_entries: "try to include homref samples as controls to get this\\nmany samples in plot (default: 6)"
    max_entries: "only plot at most this many heterozygotes (default:\\n10)"
    max_mb: "skip variants longer than this many megabases\\n(default: None)"
    min_bp: "skip variants shorter than this many bases (default:\\n20)"
    important_regions: "only report variants that overlap regions in this bed\\nfile (default: None)"
    bams: "Space-delimited list of BAM/CRAM file names (default:\\nNone)"
    sample_ids: "Space-delimited list of sample IDs, must have same\\norder as BAM/CRAM file names. BAM RG tag required if\\nthis is omitted. (default: None)"
    command_file: "store commands in this file. (default:\\nsamplot_vcf_cmds.tmp)"
    format: "comma separated list of FORMAT fields to include in\\nsample plot title (default: AS,AP,DHFFC)"
    gff_three: "genomic regions (.gff with .tbi in same directory)\\nused when building HTML table and table filters\\n(default: None)"
    down_sample: "Number of normal reads/pairs to plot (default: 1)"
    manual_run: "don't auto-run the samplot plot commands (command_file\\nwill be deleted) (default: False)"
    debug: "prints out the reason each skipped variant entry is\\nskipped (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_dir = "${in_out_dir}"
  }
}