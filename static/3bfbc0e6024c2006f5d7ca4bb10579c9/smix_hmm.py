from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Smix_Hmm_V0_1_0 = CommandToolBuilder(tool="smix_hmm", base_command=["smix_hmm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smix_Hmm_V0_1_0().translate("wdl", allow_empty_container=True)

