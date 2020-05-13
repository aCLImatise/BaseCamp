version 1.0

task Drax {
  input {
    Boolean profileProfile
    Boolean queueQueueSize
    Boolean resumeResume
    Boolean revisionRevision
    Boolean testTest
    Boolean userUser
    Boolean withWithDag
    Boolean withWithDocker
    Boolean withWithDrmaa
    Boolean withWithNotification
    Boolean withWithReport
    Boolean withWithSingularity
    Boolean withWithTimeline
    Boolean withWithTrace
    Boolean withoutWithoutDocker
    Boolean workWorkDir
  }
  command <<<
    drax \
      ~{true="-profile" false="" profileProfile} \
      ~{true="-queue-size" false="" queueQueueSize} \
      ~{true="-resume" false="" resumeResume} \
      ~{true="-revision" false="" revisionRevision} \
      ~{true="-test" false="" testTest} \
      ~{true="-user" false="" userUser} \
      ~{true="-with-dag" false="" withWithDag} \
      ~{true="-with-docker" false="" withWithDocker} \
      ~{true="-with-drmaa" false="" withWithDrmaa} \
      ~{true="-with-notification" false="" withWithNotification} \
      ~{true="-with-report" false="" withWithReport} \
      ~{true="-with-singularity" false="" withWithSingularity} \
      ~{true="-with-timeline" false="" withWithTimeline} \
      ~{true="-with-trace" false="" withWithTrace} \
      ~{true="-without-docker" false="" withoutWithoutDocker} \
      ~{true="-work-dir" false="" workWorkDir}
  >>>
}