from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lyner_Pairwise_Distances_V0_1_0 = CommandToolBuilder(tool="lyner_pairwise_distances", base_command=["lyner", "pairwise-distances"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Pairwise_Distances_V0_1_0().translate("wdl", allow_empty_container=True)

