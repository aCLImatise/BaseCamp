from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gff3_To_Collapsed_Py_V0_1_0 = CommandToolBuilder(tool="gff3_to_collapsed.py", base_command=["gff3_to_collapsed.py"], inputs=[], outputs=[], container="quay.io/biocontainers/md-cogent:8.0.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff3_To_Collapsed_Py_V0_1_0().translate("wdl")

