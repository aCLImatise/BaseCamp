version 1.0

task JunctoolsConvert {
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
    String? convertConvert
  }
  command <<<
    junctools convert \
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
      ~{convertConvert}
  >>>
}