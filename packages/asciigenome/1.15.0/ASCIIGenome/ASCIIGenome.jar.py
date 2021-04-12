from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Asciigenome_Jar_V0_1_0 = CommandToolBuilder(tool="ASCIIGenome.jar", base_command=["ASCIIGenome.jar"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Asciigenome_Jar_V0_1_0().translate("wdl", allow_empty_container=True)

