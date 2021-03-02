from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Aaindexextract_V0_1_0 = CommandToolBuilder(tool="aaindexextract", base_command=["aaindexextract"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aaindexextract_V0_1_0().translate("wdl", allow_empty_container=True)

