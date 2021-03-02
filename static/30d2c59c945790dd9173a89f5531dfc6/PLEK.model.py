from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plek_Model_V0_1_0 = CommandToolBuilder(tool="PLEK.model", base_command=["PLEK.model"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plek_Model_V0_1_0().translate("wdl", allow_empty_container=True)

