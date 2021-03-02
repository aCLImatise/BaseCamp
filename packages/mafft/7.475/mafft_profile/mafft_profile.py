from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mafft_Profile_V0_1_0 = CommandToolBuilder(tool="mafft_profile", base_command=["mafft-profile"], inputs=[], outputs=[], container="quay.io/biocontainers/mafft:7.475--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mafft_Profile_V0_1_0().translate("wdl")

