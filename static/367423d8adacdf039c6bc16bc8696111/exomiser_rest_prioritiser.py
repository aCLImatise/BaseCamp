from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Exomiser_Rest_Prioritiser_V0_1_0 = CommandToolBuilder(tool="exomiser_rest_prioritiser", base_command=["exomiser-rest-prioritiser"], inputs=[], outputs=[], container="quay.io/biocontainers/exomiser-rest-prioritiser:12.1.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Exomiser_Rest_Prioritiser_V0_1_0().translate("wdl")

