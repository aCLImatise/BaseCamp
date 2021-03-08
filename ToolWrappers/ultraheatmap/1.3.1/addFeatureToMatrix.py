from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Addfeaturetomatrix_V0_1_0 = CommandToolBuilder(tool="addFeatureToMatrix", base_command=["addFeatureToMatrix"], inputs=[], outputs=[], container="quay.io/biocontainers/ultraheatmap:1.3.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Addfeaturetomatrix_V0_1_0().translate("wdl")

