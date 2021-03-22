from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Asciigenome_Jar_V0_1_0 = CommandToolBuilder(tool="ASCIIGenome.jar", base_command=["ASCIIGenome.jar"], inputs=[], outputs=[], container="quay.io/biocontainers/asciigenome:1.16.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Asciigenome_Jar_V0_1_0().translate("wdl")

