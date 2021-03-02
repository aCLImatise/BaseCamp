from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dolmove_V0_1_0 = CommandToolBuilder(tool="dolmove", base_command=["dolmove"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dolmove_V0_1_0().translate("wdl", allow_empty_container=True)

