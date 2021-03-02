from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pisces_V0_1_0 = CommandToolBuilder(tool="pisces", base_command=["pisces"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pisces_V0_1_0().translate("wdl", allow_empty_container=True)

