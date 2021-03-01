from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Update_Sort_Bed_Slurm_Megarow_V0_1_0 = CommandToolBuilder(tool="update_sort_bed_slurm_megarow", base_command=["update-sort-bed-slurm-megarow"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Update_Sort_Bed_Slurm_Megarow_V0_1_0().translate("wdl", allow_empty_container=True)

