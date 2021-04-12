from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Normalisation_Tpl_Html_V0_1_0 = CommandToolBuilder(tool="normalisation_tpl.html", base_command=["normalisation_tpl.html"], inputs=[], outputs=[], container="quay.io/biocontainers/frogs:3.2.2--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Normalisation_Tpl_Html_V0_1_0().translate("wdl")

