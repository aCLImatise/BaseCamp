from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Splitinput_Pl_V0_1_0 = CommandToolBuilder(tool="splitInput.pl", base_command=["splitInput.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitinput_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

