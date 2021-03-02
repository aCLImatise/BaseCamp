from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hmmer2Sam_V0_1_0 = CommandToolBuilder(tool="hmmer2sam", base_command=["hmmer2sam"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmer2Sam_V0_1_0().translate("wdl", allow_empty_container=True)

