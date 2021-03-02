from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Parsimplify_V0_1_0 = CommandToolBuilder(tool="parsimplify", base_command=["parsimplify"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsimplify_V0_1_0().translate("wdl", allow_empty_container=True)

