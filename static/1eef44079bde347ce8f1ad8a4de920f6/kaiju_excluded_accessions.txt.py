from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Kaiju_Excluded_Accessions_Txt_V0_1_0 = CommandToolBuilder(tool="kaiju_excluded_accessions.txt", base_command=["kaiju-excluded-accessions.txt"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kaiju_Excluded_Accessions_Txt_V0_1_0().translate("wdl", allow_empty_container=True)

