from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


R2R_Msa_Comply_Pl_V0_1_0 = CommandToolBuilder(tool="r2r_msa_comply.pl", base_command=["r2r_msa_comply.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    R2R_Msa_Comply_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

