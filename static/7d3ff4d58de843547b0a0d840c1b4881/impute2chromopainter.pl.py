from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Impute2Chromopainter_Pl_V0_1_0 = CommandToolBuilder(tool="impute2chromopainter.pl", base_command=["impute2chromopainter.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Impute2Chromopainter_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

