from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Pscores_Pl_V0_1_0 = CommandToolBuilder(tool="make_pscores.pl", base_command=["make_pscores.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Pscores_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

