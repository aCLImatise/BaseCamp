from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Frestdist_V0_1_0 = CommandToolBuilder(tool="_frestdist", base_command=["_frestdist"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Frestdist_V0_1_0().translate("wdl", allow_empty_container=True)

