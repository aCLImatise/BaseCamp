version 1.0

task Lohhla {
  input {
    String? patient_id
    Directory? output_dir
    File? normal_bam_file
    String? bam_dir
    String? hla_path
    String? hla_fast_a_loc
    String? copy_num_loc
    String? override_dir
    Int? min_coverage_filter
    Int? km_er_size
    Int? num_mismatch
    String? mapping_step
    Int? fishing_step
    String? plotting_step
    String? coverage_step
    String? cleanup
    File? novo_dir
    File? g_atk_dir
    String? hla_exon_loc
    String? ignore_warnings
  }
  command <<<
    lohhla \
      ~{if defined(patient_id) then ("--patientId " +  '"' + patient_id + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(normal_bam_file) then ("--normalBAMfile " +  '"' + normal_bam_file + '"') else ""} \
      ~{if defined(bam_dir) then ("--BAMDir " +  '"' + bam_dir + '"') else ""} \
      ~{if defined(hla_path) then ("--hlaPath " +  '"' + hla_path + '"') else ""} \
      ~{if defined(hla_fast_a_loc) then ("--HLAfastaLoc " +  '"' + hla_fast_a_loc + '"') else ""} \
      ~{if defined(copy_num_loc) then ("--CopyNumLoc " +  '"' + copy_num_loc + '"') else ""} \
      ~{if defined(override_dir) then ("--overrideDir " +  '"' + override_dir + '"') else ""} \
      ~{if defined(min_coverage_filter) then ("--minCoverageFilter " +  '"' + min_coverage_filter + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmerSize " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(num_mismatch) then ("--numMisMatch " +  '"' + num_mismatch + '"') else ""} \
      ~{if defined(mapping_step) then ("--mappingStep " +  '"' + mapping_step + '"') else ""} \
      ~{if defined(fishing_step) then ("--fishingStep " +  '"' + fishing_step + '"') else ""} \
      ~{if defined(plotting_step) then ("--plottingStep " +  '"' + plotting_step + '"') else ""} \
      ~{if defined(coverage_step) then ("--coverageStep " +  '"' + coverage_step + '"') else ""} \
      ~{if defined(cleanup) then ("--cleanUp " +  '"' + cleanup + '"') else ""} \
      ~{if defined(novo_dir) then ("--novoDir " +  '"' + novo_dir + '"') else ""} \
      ~{if defined(g_atk_dir) then ("--gatkDir " +  '"' + g_atk_dir + '"') else ""} \
      ~{if defined(hla_exon_loc) then ("--HLAexonLoc " +  '"' + hla_exon_loc + '"') else ""} \
      ~{if defined(ignore_warnings) then ("--ignoreWarnings " +  '"' + ignore_warnings + '"') else ""}
  >>>
  parameter_meta {
    patient_id: "patient ID"
    output_dir: "location of output directory"
    normal_bam_file: "normal BAM file\\ncan be FALSE to run without normal sample"
    bam_dir: "location of all BAMs to test"
    hla_path: "location to patient HLA calls"
    hla_fast_a_loc: "location of HLA FASTA [default= ~/lohhla/data/hla_all.fasta]"
    copy_num_loc: "location to patient purity and ploidy output\\ncan be FALSE to only estimate allelic imbalance"
    override_dir: "location of flagstat information if already run [default= FALSE]"
    min_coverage_filter: "minimum coverage at mismatch site [default= 30]"
    km_er_size: "size of kmers to fish with [default= 50]"
    num_mismatch: "number of mismatches allowed in read to map to HLA allele [default= 1]"
    mapping_step: "does mapping to HLA alleles need to be done [default= TRUE]"
    fishing_step: "if mapping is performed, also look for fished reads matching kmers of size kmerSize [default= TRUE]"
    plotting_step: "are plots made [default= TRUE]"
    coverage_step: "are coverage differences analyzed [default= TRUE]"
    cleanup: "remove temporary files [default= TRUE]"
    novo_dir: "path to novoalign executable [default= ]"
    g_atk_dir: "path to GATK executable [default= ]"
    hla_exon_loc: "HLA exon boundaries for plotting [default= ~/lohhla/data/hla.dat]"
    ignore_warnings: "continue running with warnings [default= TRUE]"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}