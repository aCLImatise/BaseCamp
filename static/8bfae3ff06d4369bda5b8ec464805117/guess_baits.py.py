from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Guess_Baits_Py_V0_1_0 = CommandToolBuilder(tool="guess_baits.py", base_command=["guess_baits.py"], inputs=[], outputs=[], container="quay.io/biocontainers/cnvkit:0.9.8--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guess_Baits_Py_V0_1_0().translate("wdl")

