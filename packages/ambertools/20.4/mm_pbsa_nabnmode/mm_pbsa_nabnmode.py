from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mm_Pbsa_Nabnmode_V0_1_0 = CommandToolBuilder(tool="mm_pbsa_nabnmode", base_command=["mm_pbsa_nabnmode"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mm_Pbsa_Nabnmode_V0_1_0().translate("wdl", allow_empty_container=True)

