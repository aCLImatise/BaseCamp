from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Model_Diploid_R_V0_1_0 = CommandToolBuilder(tool="model_diploid.r", base_command=["model-diploid.r"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Model_Diploid_R_V0_1_0().translate("wdl", allow_empty_container=True)

