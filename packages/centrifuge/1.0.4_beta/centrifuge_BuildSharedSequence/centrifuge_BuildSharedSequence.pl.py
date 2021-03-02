from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Centrifuge_Buildsharedsequence_Pl_V0_1_0 = CommandToolBuilder(tool="centrifuge_BuildSharedSequence.pl", base_command=["centrifuge-BuildSharedSequence.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Centrifuge_Buildsharedsequence_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

