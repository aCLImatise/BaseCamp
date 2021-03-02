from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Estmapper_Pl_V0_1_0 = CommandToolBuilder(tool="ESTmapper.pl", base_command=["ESTmapper.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Estmapper_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

