from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Makescf_V0_1_0 = CommandToolBuilder(tool="makeSCF", base_command=["makeSCF"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makescf_V0_1_0().translate("wdl", allow_empty_container=True)

