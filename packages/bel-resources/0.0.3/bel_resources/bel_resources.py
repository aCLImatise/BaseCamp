from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bel_Resources_V0_1_0 = CommandToolBuilder(tool="bel_resources", base_command=["bel-resources"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bel_Resources_V0_1_0().translate("wdl", allow_empty_container=True)

