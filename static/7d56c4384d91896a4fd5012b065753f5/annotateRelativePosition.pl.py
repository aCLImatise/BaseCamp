from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Annotaterelativeposition_Pl_V0_1_0 = CommandToolBuilder(tool="annotateRelativePosition.pl", base_command=["annotateRelativePosition.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annotaterelativeposition_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

