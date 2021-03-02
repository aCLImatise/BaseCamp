from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Single_Cov2_V0_1_0 = CommandToolBuilder(tool="single_cov2", base_command=["single_cov2"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Single_Cov2_V0_1_0().translate("wdl", allow_empty_container=True)

