version 1.0

task JunctoolsSplit {
  input {
    String? thisThis
    String? scriptScript
    String? containsContains
    String? aA
    String? numberNumber
    String? ofOf
    String? toolsTools
    String? forFor
    String? manipulatingManipulating
    String? junctionJunction
    File? filesFiles
    String? splitSplit
  }
  command <<<
    junctools split \
      ~{thisThis} \
      ~{scriptScript} \
      ~{containsContains} \
      ~{aA} \
      ~{numberNumber} \
      ~{ofOf} \
      ~{toolsTools} \
      ~{forFor} \
      ~{manipulatingManipulating} \
      ~{junctionJunction} \
      ~{filesFiles} \
      ~{splitSplit}
  >>>
}