from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Difference_From_First_Tss_Script_Mordor_Chrom_Wide_R_V0_1_0 = CommandToolBuilder(tool="difference_from_first_TSS_script_mordor_chrom_wide.r", base_command=["difference_from_first_TSS_script_mordor_chrom_wide.r"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Difference_From_First_Tss_Script_Mordor_Chrom_Wide_R_V0_1_0().translate("wdl", allow_empty_container=True)

