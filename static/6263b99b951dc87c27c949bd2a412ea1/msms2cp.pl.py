from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Msms2Cp_Pl_V0_1_0 = CommandToolBuilder(tool="msms2cp.pl", base_command=["msms2cp.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msms2Cp_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

