from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Novo2Paf_V0_1_0 = CommandToolBuilder(tool="novo2paf", base_command=["novo2paf"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novo2Paf_V0_1_0().translate("wdl", allow_empty_container=True)

