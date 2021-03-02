from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fa2Fq_O_V0_1_0 = CommandToolBuilder(tool="fa2fq.o", base_command=["fa2fq.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fa2Fq_O_V0_1_0().translate("wdl", allow_empty_container=True)

