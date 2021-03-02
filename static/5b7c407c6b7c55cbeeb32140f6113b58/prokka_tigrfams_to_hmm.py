from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Prokka_Tigrfams_To_Hmm_V0_1_0 = CommandToolBuilder(tool="prokka_tigrfams_to_hmm", base_command=["prokka-tigrfams_to_hmm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prokka_Tigrfams_To_Hmm_V0_1_0().translate("wdl", allow_empty_container=True)

