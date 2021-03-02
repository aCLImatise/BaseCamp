from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mkcsgb2312_V0_1_0 = CommandToolBuilder(tool="mkCSGB2312", base_command=["mkCSGB2312"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mkcsgb2312_V0_1_0().translate("wdl", allow_empty_container=True)

