version 1.0

task Who {
  input {
    String allAll
    String bootBoot
    String deadDead
    String headingHeading
    String loginLogin
    String lookupLookup
    String mM
    String processProcess
    String countCount
    String runlevelRunlevel
    String shortShort
    String timeTime
    String mesgMesg
    String usersUsers
    String messageMessage
    String writableWritable
  }
  command <<<
    who \
      ~{if defined(allAll) then ("--all " +  '"' + allAll + '"') else ""} \
      ~{if defined(bootBoot) then ("--boot " +  '"' + bootBoot + '"') else ""} \
      ~{if defined(deadDead) then ("--dead " +  '"' + deadDead + '"') else ""} \
      ~{if defined(headingHeading) then ("--heading " +  '"' + headingHeading + '"') else ""} \
      ~{if defined(loginLogin) then ("--login " +  '"' + loginLogin + '"') else ""} \
      ~{if defined(lookupLookup) then ("--lookup " +  '"' + lookupLookup + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(processProcess) then ("--process " +  '"' + processProcess + '"') else ""} \
      ~{if defined(countCount) then ("--count " +  '"' + countCount + '"') else ""} \
      ~{if defined(runlevelRunlevel) then ("--runlevel " +  '"' + runlevelRunlevel + '"') else ""} \
      ~{if defined(shortShort) then ("--short " +  '"' + shortShort + '"') else ""} \
      ~{if defined(timeTime) then ("--time " +  '"' + timeTime + '"') else ""} \
      ~{if defined(mesgMesg) then ("--mesg " +  '"' + mesgMesg + '"') else ""} \
      ~{if defined(usersUsers) then ("--users " +  '"' + usersUsers + '"') else ""} \
      ~{if defined(messageMessage) then ("--message " +  '"' + messageMessage + '"') else ""} \
      ~{if defined(writableWritable) then ("--writable " +  '"' + writableWritable + '"') else ""}
  >>>
}