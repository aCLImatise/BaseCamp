from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Complete_Ant_Cmd_Pl_V0_1_0 = CommandToolBuilder(tool="complete_ant_cmd.pl", base_command=["complete-ant-cmd.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Complete_Ant_Cmd_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

