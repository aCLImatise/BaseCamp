from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bridgeresult2Cytoscape_Pl_V0_1_0 = CommandToolBuilder(tool="bridgeResult2Cytoscape.pl", base_command=["bridgeResult2Cytoscape.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bridgeresult2Cytoscape_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

