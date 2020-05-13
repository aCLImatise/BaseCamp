version 1.0

task Realpath {
  input {
    Boolean canonicalizeCanonicalizeExisting
    Boolean canonicalizeCanonicalizeMissing
    Boolean logicalLogical
    Boolean physicalPhysical
    Boolean quietQuiet
    File relativeRelativeTo
    File relativeRelativeBase
    Boolean noNoSymlinks
    Boolean zeroZero
  }
  command <<<
    realpath \
      ~{true="--canonicalize-existing" false="" canonicalizeCanonicalizeExisting} \
      ~{true="--canonicalize-missing" false="" canonicalizeCanonicalizeMissing} \
      ~{true="--logical" false="" logicalLogical} \
      ~{true="--physical" false="" physicalPhysical} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(relativeRelativeTo) then ("--relative-to " +  '"' + relativeRelativeTo + '"') else ""} \
      ~{if defined(relativeRelativeBase) then ("--relative-base " +  '"' + relativeRelativeBase + '"') else ""} \
      ~{true="--no-symlinks" false="" noNoSymlinks} \
      ~{true="--zero" false="" zeroZero}
  >>>
}