from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Benchmark2Ca_V0_1_0 = CommandToolBuilder(tool="benchmark2ca", base_command=["benchmark2ca"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Benchmark2Ca_V0_1_0().translate("wdl", allow_empty_container=True)

