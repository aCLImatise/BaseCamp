from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


O_Gen_Dicts_For_Qual_Stats_V0_1_0 = CommandToolBuilder(tool="o_gen_dicts_for_qual_stats", base_command=["o-gen-dicts-for-qual-stats"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Gen_Dicts_For_Qual_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

