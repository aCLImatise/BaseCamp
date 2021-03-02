from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Blosum62_Fas_V0_1_0 = CommandToolBuilder(tool="blosum62.fas", base_command=["blosum62.fas"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blosum62_Fas_V0_1_0().translate("wdl", allow_empty_container=True)

