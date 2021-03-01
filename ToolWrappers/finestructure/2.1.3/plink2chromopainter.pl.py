from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plink2Chromopainter_Pl_V0_1_0 = CommandToolBuilder(tool="plink2chromopainter.pl", base_command=["plink2chromopainter.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plink2Chromopainter_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

