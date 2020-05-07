version 1.0

task GetGWASoverlap.pl {
  input {
    Boolean dD
    Boolean minMin
    Boolean cpuCpu
    File gregorGregor
    Boolean ldLd
    Boolean studyStudyId
    Boolean studyStudyIdFile
    String snpSnpOut
    Boolean snpSnpOutAll
  }
  command <<<
    getGWASoverlap.pl \
      ~{true="-d" false="" dD} \
      ~{true="-min" false="" minMin} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{if defined(gregorGregor) then ("-GREGOR " +  '"' + gregorGregor + '"') else ""} \
      ~{true="-LD" false="" ldLd} \
      ~{true="-studyID" false="" studyStudyId} \
      ~{true="-studyIDfile" false="" studyStudyIdFile} \
      ~{if defined(snpSnpOut) then ("-snpOut " +  '"' + snpSnpOut + '"') else ""} \
      ~{true="-snpOutAll" false="" snpSnpOutAll}
  >>>
}