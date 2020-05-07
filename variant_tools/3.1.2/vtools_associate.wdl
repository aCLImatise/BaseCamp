version 1.0

task VtoolsAssociate {
  input {
    String jobsJobs
    Boolean mpiMpi
    Boolean vV
    Boolean covariatesCovariates
    Boolean varVarInfo
    Boolean genoGenoInfo
    String genoGenoName
    Array[String]+ methodsMethods
    Boolean gG
    Boolean sS
    Boolean genotypesGenotypes
    Boolean discardDiscardSamples
    Boolean discardDiscardVariants
    String toToDb
    String delimiterDelimiter
    Boolean forceForce
    String? variantsVariants
    String? phenotypesPhenotypes
  }
  command <<<
    vtools associate \
      ~{variantsVariants} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{true="-mpi" false="" mpiMpi} \
      ~{true="-v" false="" vV} \
      ~{true="--covariates" false="" covariatesCovariates} \
      ~{true="--var_info" false="" varVarInfo} \
      ~{true="--geno_info" false="" genoGenoInfo} \
      ~{if defined(genoGenoName) then ("--geno_name " +  '"' + genoGenoName + '"') else ""} \
      ~{if defined(methodsMethods) then ("--methods " +  '"' + methodsMethods + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="-s" false="" sS} \
      ~{true="--genotypes" false="" genotypesGenotypes} \
      ~{true="--discard_samples" false="" discardDiscardSamples} \
      ~{true="--discard_variants" false="" discardDiscardVariants} \
      ~{if defined(toToDb) then ("--to_db " +  '"' + toToDb + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{phenotypesPhenotypes}
  >>>
}