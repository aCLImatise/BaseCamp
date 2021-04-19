from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sanity_Check_Mature_Ref_Pl_V0_1_0 = CommandToolBuilder(tool="sanity_check_mature_ref.pl", base_command=["sanity_check_mature_ref.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sanity_Check_Mature_Ref_Pl_V0_1_0().translate("wdl")

