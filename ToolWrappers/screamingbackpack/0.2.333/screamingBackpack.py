from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Screamingbackpack_V0_1_0 = CommandToolBuilder(tool="screamingBackpack", base_command=["screamingBackpack"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Screamingbackpack_V0_1_0().translate("wdl", allow_empty_container=True)

