from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Script_All_Heatmaps_Sh_V0_1_0 = CommandToolBuilder(tool="script_all_heatmaps.sh", base_command=["script_all_heatmaps.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Script_All_Heatmaps_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

