from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Humann2_Benchmark_V0_1_0 = CommandToolBuilder(tool="humann2_benchmark", base_command=["humann2_benchmark"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Benchmark_V0_1_0().translate("wdl", allow_empty_container=True)

