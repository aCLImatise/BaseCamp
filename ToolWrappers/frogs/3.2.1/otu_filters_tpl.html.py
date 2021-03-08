from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Otu_Filters_Tpl_Html_V0_1_0 = CommandToolBuilder(tool="otu_filters_tpl.html", base_command=["otu_filters_tpl.html"], inputs=[], outputs=[], container="quay.io/biocontainers/frogs:3.2.1--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Otu_Filters_Tpl_Html_V0_1_0().translate("wdl")

