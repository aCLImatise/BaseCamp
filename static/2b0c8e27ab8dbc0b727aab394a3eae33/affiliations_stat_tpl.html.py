from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Affiliations_Stat_Tpl_Html_V0_1_0 = CommandToolBuilder(tool="affiliations_stat_tpl.html", base_command=["affiliations_stat_tpl.html"], inputs=[], outputs=[], container="quay.io/biocontainers/frogs:3.2.1--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Affiliations_Stat_Tpl_Html_V0_1_0().translate("wdl")

