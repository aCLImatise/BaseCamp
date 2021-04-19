from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rfam_For_Mirdeep_Fa_V0_1_0 = CommandToolBuilder(tool="Rfam_for_miRDeep.fa", base_command=["Rfam_for_miRDeep.fa"], inputs=[], outputs=[], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rfam_For_Mirdeep_Fa_V0_1_0().translate("wdl")

