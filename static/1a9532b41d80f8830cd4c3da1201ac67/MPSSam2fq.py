from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mpssam2Fq_V0_1_0 = CommandToolBuilder(tool="MPSSam2fq", base_command=["MPSSam2fq"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mpssam2Fq_V0_1_0().translate("wdl", allow_empty_container=True)

