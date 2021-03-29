from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Guess_Ploidy_Py_V0_1_0 = CommandToolBuilder(tool="guess_ploidy.py", base_command=["guess-ploidy.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bcftools:1.12--h3f113a9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guess_Ploidy_Py_V0_1_0().translate("wdl")

