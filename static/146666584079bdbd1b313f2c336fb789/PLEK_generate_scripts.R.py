from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plek_Generate_Scripts_R_V0_1_0 = CommandToolBuilder(tool="PLEK_generate_scripts.R", base_command=["PLEK_generate_scripts.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plek_Generate_Scripts_R_V0_1_0().translate("wdl", allow_empty_container=True)

