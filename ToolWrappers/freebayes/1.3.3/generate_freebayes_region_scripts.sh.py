from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Generate_Freebayes_Region_Scripts_Sh_V0_1_0 = CommandToolBuilder(tool="generate_freebayes_region_scripts.sh", base_command=["generate_freebayes_region_scripts.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Freebayes_Region_Scripts_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

