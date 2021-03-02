from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Admin_Generegionbeddumper_Pl_V0_1_0 = CommandToolBuilder(tool="Admin_GeneRegionBedDumper.pl", base_command=["Admin_GeneRegionBedDumper.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Admin_Generegionbeddumper_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

