from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


3Edgetests_V0_1_0 = CommandToolBuilder(tool="3EdgeTests", base_command=["3EdgeTests"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    3Edgetests_V0_1_0().translate("wdl", allow_empty_container=True)

