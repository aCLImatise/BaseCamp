from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Anvi_Get_Enriched_Functions_Per_Pan_Group_V0_1_0 = CommandToolBuilder(tool="anvi_get_enriched_functions_per_pan_group", base_command=["anvi-get-enriched-functions-per-pan-group"], inputs=[], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Get_Enriched_Functions_Per_Pan_Group_V0_1_0().translate("wdl")

