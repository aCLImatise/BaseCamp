from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rnazslicealnbypos_Pl_V0_1_0 = CommandToolBuilder(tool="rnazSliceAlnByPos.pl", base_command=["rnazSliceAlnByPos.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnazslicealnbypos_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

