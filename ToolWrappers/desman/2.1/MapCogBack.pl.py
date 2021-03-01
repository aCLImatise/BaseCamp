from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mapcogback_Pl_V0_1_0 = CommandToolBuilder(tool="MapCogBack.pl", base_command=["MapCogBack.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mapcogback_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

