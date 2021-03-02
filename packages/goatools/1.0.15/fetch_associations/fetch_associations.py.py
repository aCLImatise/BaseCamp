from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fetch_Associations_Py_V0_1_0 = CommandToolBuilder(tool="fetch_associations.py", base_command=["fetch_associations.py"], inputs=[], outputs=[], container="quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fetch_Associations_Py_V0_1_0().translate("wdl")

