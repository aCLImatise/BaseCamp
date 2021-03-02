from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rangen_V0_1_0 = CommandToolBuilder(tool="rangen", base_command=["rangen"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rangen_V0_1_0().translate("wdl", allow_empty_container=True)

