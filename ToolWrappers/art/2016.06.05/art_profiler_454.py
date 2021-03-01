from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Art_Profiler_454_V0_1_0 = CommandToolBuilder(tool="art_profiler_454", base_command=["art_profiler_454"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Art_Profiler_454_V0_1_0().translate("wdl", allow_empty_container=True)

