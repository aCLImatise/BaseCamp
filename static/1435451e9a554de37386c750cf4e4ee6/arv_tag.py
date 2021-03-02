from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Arv_Tag_V0_1_0 = CommandToolBuilder(tool="arv_tag", base_command=["arv-tag"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arv_Tag_V0_1_0().translate("wdl", allow_empty_container=True)

