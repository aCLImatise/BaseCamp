from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Count_Constant_Sites_V0_1_0 = CommandToolBuilder(tool="count_constant_sites", base_command=["count_constant_sites"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Count_Constant_Sites_V0_1_0().translate("wdl", allow_empty_container=True)

