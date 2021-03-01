from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Catrep_V0_1_0 = CommandToolBuilder(tool="catrep", base_command=["catrep"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Catrep_V0_1_0().translate("wdl", allow_empty_container=True)

