version 1.0

task Abritamr {
  input {
    Boolean mduMduQc
    String qcQc
    String positivePositiveControl
    Boolean singularitySingularity
    String singularitySingularityPath
    String contigsContigs
    String amrAmrFinderOutput
    String workdirWorkdir
    String resourcesResources
    String drugDrugClasses
    String jobsJobs
    Boolean keepKeep
  }
  command <<<
    abritamr \
      ~{true="--mduqc" false="" mduMduQc} \
      ~{if defined(qcQc) then ("--qc " +  '"' + qcQc + '"') else ""} \
      ~{if defined(positivePositiveControl) then ("--positive_control " +  '"' + positivePositiveControl + '"') else ""} \
      ~{true="--Singularity" false="" singularitySingularity} \
      ~{if defined(singularitySingularityPath) then ("--singularity_path " +  '"' + singularitySingularityPath + '"') else ""} \
      ~{if defined(contigsContigs) then ("--contigs " +  '"' + contigsContigs + '"') else ""} \
      ~{if defined(amrAmrFinderOutput) then ("--amrfinder_output " +  '"' + amrAmrFinderOutput + '"') else ""} \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{if defined(resourcesResources) then ("--resources " +  '"' + resourcesResources + '"') else ""} \
      ~{if defined(drugDrugClasses) then ("--drug_classes " +  '"' + drugDrugClasses + '"') else ""} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{true="--keep" false="" keepKeep}
  >>>
}