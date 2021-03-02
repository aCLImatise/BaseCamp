from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Parsesim4Output_Pl_V0_1_0 = CommandToolBuilder(tool="parseSim4Output.pl", base_command=["parseSim4Output.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsesim4Output_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

