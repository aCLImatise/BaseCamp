from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Metapop_Microdiversity_Visualizations_R_V0_1_0 = CommandToolBuilder(tool="MetaPop_Microdiversity_Visualizations.R", base_command=["MetaPop_Microdiversity_Visualizations.R"], inputs=[], outputs=[], container="quay.io/biocontainers/metapop:1.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metapop_Microdiversity_Visualizations_R_V0_1_0().translate("wdl")

