from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Test_Genomedata_Py_V0_1_0 = CommandToolBuilder(tool="test_genomedata.py", base_command=["test_genomedata.py"], inputs=[], outputs=[], container="quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Genomedata_Py_V0_1_0().translate("wdl")

