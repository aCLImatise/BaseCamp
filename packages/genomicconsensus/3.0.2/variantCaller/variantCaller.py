from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Variantcaller_V0_1_0 = CommandToolBuilder(tool="variantCaller", base_command=["variantCaller"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Variantcaller_V0_1_0().translate("wdl", allow_empty_container=True)

