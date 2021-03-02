from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Json_Xs_V0_1_0 = CommandToolBuilder(tool="json_xs", base_command=["json_xs"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Json_Xs_V0_1_0().translate("wdl", allow_empty_container=True)

