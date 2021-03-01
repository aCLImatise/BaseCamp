from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bp_Das_Server_Pl_V0_1_0 = CommandToolBuilder(tool="bp_das_server.pl", base_command=["bp_das_server.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Das_Server_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

