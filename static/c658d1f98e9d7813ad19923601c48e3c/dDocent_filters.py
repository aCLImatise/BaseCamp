from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ddocent_Filters_V0_1_0 = CommandToolBuilder(tool="dDocent_filters", base_command=["dDocent_filters"], inputs=[], outputs=[], container="quay.io/biocontainers/ddocent:2.8.13--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ddocent_Filters_V0_1_0().translate("wdl")

