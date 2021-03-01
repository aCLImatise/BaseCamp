from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Join_Into_Groups_Of_V0_1_0 = CommandToolBuilder(tool="join_into_groups_of", base_command=["join-into-groups-of"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Join_Into_Groups_Of_V0_1_0().translate("wdl", allow_empty_container=True)

