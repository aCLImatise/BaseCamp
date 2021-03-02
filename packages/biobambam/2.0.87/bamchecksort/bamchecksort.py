from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bamchecksort_V0_1_0 = CommandToolBuilder(tool="bamchecksort", base_command=["bamchecksort"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamchecksort_V0_1_0().translate("wdl", allow_empty_container=True)

