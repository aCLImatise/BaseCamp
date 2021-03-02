from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Benchmark2Arachne_V0_1_0 = CommandToolBuilder(tool="benchmark2arachne", base_command=["benchmark2arachne"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Benchmark2Arachne_V0_1_0().translate("wdl", allow_empty_container=True)

