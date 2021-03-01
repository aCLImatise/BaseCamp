from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


O_Bars_For_Each_Column_R_V0_1_0 = CommandToolBuilder(tool="o_bars_for_each_column.R", base_command=["o-bars-for-each-column.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Bars_For_Each_Column_R_V0_1_0().translate("wdl", allow_empty_container=True)

