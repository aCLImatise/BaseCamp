from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gsvar_Special_Regions_Tsv_V0_1_0 = CommandToolBuilder(tool="GSvar_special_regions.tsv", base_command=["GSvar_special_regions.tsv"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsvar_Special_Regions_Tsv_V0_1_0().translate("wdl", allow_empty_container=True)

