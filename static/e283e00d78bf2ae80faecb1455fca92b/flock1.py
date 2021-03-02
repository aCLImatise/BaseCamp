from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Flock1_V0_1_0 = CommandToolBuilder(tool="flock1", base_command=["flock1"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flock1_V0_1_0().translate("wdl", allow_empty_container=True)

