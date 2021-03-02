from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Intarna_Csv_P_Value_R_V0_1_0 = CommandToolBuilder(tool="IntaRNA_CSV_p_value.R", base_command=["IntaRNA_CSV_p-value.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Intarna_Csv_P_Value_R_V0_1_0().translate("wdl", allow_empty_container=True)

