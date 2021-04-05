from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Collectstructuralvariantreadmetrics_V0_1_0 = CommandToolBuilder(tool="CollectStructuralVariantReadMetrics", base_command=["CollectStructuralVariantReadMetrics"], inputs=[], outputs=[], container="quay.io/biocontainers/gridss:2.11.0--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Collectstructuralvariantreadmetrics_V0_1_0().translate("wdl")

