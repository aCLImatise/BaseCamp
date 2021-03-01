from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cbimportseurat_V0_1_0 = CommandToolBuilder(tool="cbImportSeurat", base_command=["cbImportSeurat"], inputs=[], outputs=[], container="quay.io/biocontainers/ucsc-cell-browser:0.7.15--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cbimportseurat_V0_1_0().translate("wdl")

