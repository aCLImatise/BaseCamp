from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Findrule_V0_1_0 = CommandToolBuilder(tool="findrule", base_command=["findrule"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findrule_V0_1_0().translate("wdl", allow_empty_container=True)

