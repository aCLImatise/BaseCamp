from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Build_Weighted_Model_V0_1_0 = CommandToolBuilder(tool="build_weighted_model", base_command=["build-weighted-model"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Build_Weighted_Model_V0_1_0().translate("wdl", allow_empty_container=True)

