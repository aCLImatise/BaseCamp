from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Keggcharter_Prokaryotic_Maps_Txt_V0_1_0 = CommandToolBuilder(tool="KEGGCharter_prokaryotic_maps.txt", base_command=["KEGGCharter_prokaryotic_maps.txt"], inputs=[], outputs=[], container="quay.io/biocontainers/keggcharter:0.2.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Keggcharter_Prokaryotic_Maps_Txt_V0_1_0().translate("wdl")

