from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Yamlpp5_Load_V0_1_0 = CommandToolBuilder(tool="yamlpp5_load", base_command=["yamlpp5-load"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Yamlpp5_Load_V0_1_0().translate("wdl", allow_empty_container=True)

