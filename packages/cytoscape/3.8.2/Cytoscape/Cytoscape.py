from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cytoscape_V0_1_0 = CommandToolBuilder(tool="Cytoscape", base_command=["Cytoscape"], inputs=[], outputs=[], container="quay.io/biocontainers/cytoscape:3.8.2--hadc2ddb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cytoscape_V0_1_0().translate("wdl")

