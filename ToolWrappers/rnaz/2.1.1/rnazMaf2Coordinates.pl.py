from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rnazmaf2Coordinates_Pl_V0_1_0 = CommandToolBuilder(tool="rnazMaf2Coordinates.pl", base_command=["rnazMaf2Coordinates.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnazmaf2Coordinates_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

