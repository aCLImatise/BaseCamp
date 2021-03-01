from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dia_Umpire_Se_V0_1_0 = CommandToolBuilder(tool="dia_umpire_se", base_command=["dia_umpire_se"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dia_Umpire_Se_V0_1_0().translate("wdl", allow_empty_container=True)

