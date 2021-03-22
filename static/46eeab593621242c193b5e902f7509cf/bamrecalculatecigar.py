from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bamrecalculatecigar_V0_1_0 = CommandToolBuilder(tool="bamrecalculatecigar", base_command=["bamrecalculatecigar"], inputs=[], outputs=[], container="quay.io/biocontainers/biobambam:2.0.179--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamrecalculatecigar_V0_1_0().translate("wdl")

