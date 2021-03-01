from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mkpretty_V0_1_0 = CommandToolBuilder(tool="mkpretty", base_command=["mkpretty"], inputs=[], outputs=[], container="quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mkpretty_V0_1_0().translate("wdl")

