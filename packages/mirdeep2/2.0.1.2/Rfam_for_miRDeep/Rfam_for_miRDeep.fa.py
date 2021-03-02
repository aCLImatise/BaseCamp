from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rfam_For_Mirdeep_Fa_V0_1_0 = CommandToolBuilder(tool="Rfam_for_miRDeep.fa", base_command=["Rfam_for_miRDeep.fa"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rfam_For_Mirdeep_Fa_V0_1_0().translate("wdl", allow_empty_container=True)

