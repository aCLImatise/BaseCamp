from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Measure_Features_V0_1_0 = CommandToolBuilder(tool="measure_features", base_command=["measure_features"], inputs=[], outputs=[], container="quay.io/biocontainers/atactk:0.1.9--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Measure_Features_V0_1_0().translate("wdl")

