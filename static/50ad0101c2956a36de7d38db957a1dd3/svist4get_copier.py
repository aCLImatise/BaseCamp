from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Svist4Get_Copier_V0_1_0 = CommandToolBuilder(tool="svist4get_copier", base_command=["svist4get_copier"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svist4Get_Copier_V0_1_0().translate("wdl", allow_empty_container=True)

