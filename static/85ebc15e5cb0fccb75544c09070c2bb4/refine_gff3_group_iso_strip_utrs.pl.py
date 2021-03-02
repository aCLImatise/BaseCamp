from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Refine_Gff3_Group_Iso_Strip_Utrs_Pl_V0_1_0 = CommandToolBuilder(tool="refine_gff3_group_iso_strip_utrs.pl", base_command=["refine_gff3_group_iso_strip_utrs.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refine_Gff3_Group_Iso_Strip_Utrs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

