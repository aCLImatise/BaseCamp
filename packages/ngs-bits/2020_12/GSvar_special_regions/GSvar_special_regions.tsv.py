from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gsvar_Special_Regions_Tsv_V0_1_0 = CommandToolBuilder(tool="GSvar_special_regions.tsv", base_command=["GSvar_special_regions.tsv"], inputs=[], outputs=[], container="quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsvar_Special_Regions_Tsv_V0_1_0().translate("wdl")

