from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Affiliation_Otu_Tpl_Html_V0_1_0 = CommandToolBuilder(tool="affiliation_OTU_tpl.html", base_command=["affiliation_OTU_tpl.html"], inputs=[], outputs=[], container="quay.io/biocontainers/frogs:3.2.2--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Affiliation_Otu_Tpl_Html_V0_1_0().translate("wdl")

