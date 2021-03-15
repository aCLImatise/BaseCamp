from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ripp_Html_Generator_Py_V0_1_0 = CommandToolBuilder(tool="ripp_html_generator.py", base_command=["ripp_html_generator.py"], inputs=[], outputs=[], container="quay.io/biocontainers/rodeo:2.3.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ripp_Html_Generator_Py_V0_1_0().translate("wdl")

