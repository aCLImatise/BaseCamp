from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Anvi_Threshold_Taxonomy_V0_1_0 = CommandToolBuilder(tool="anvi_threshold_taxonomy", base_command=["anvi-threshold-taxonomy"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Threshold_Taxonomy_V0_1_0().translate("wdl", allow_empty_container=True)

