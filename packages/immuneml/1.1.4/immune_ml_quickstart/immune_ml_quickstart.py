from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Immune_Ml_Quickstart_V0_1_0 = CommandToolBuilder(tool="immune_ml_quickstart", base_command=["immune-ml-quickstart"], inputs=[], outputs=[], container="quay.io/biocontainers/immuneml:1.1.4--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Immune_Ml_Quickstart_V0_1_0().translate("wdl")

