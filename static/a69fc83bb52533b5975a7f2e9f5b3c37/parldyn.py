from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Parldyn_V0_1_0 = CommandToolBuilder(tool="parldyn", base_command=["parldyn"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parldyn_V0_1_0().translate("wdl", allow_empty_container=True)

