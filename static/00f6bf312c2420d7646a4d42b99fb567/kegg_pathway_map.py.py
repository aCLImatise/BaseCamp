from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Kegg_Pathway_Map_Py_V0_1_0 = CommandToolBuilder(tool="kegg_pathway_map.py", base_command=["kegg_pathway_map.py"], inputs=[], outputs=[], container="quay.io/biocontainers/keggcharter:0.2.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kegg_Pathway_Map_Py_V0_1_0().translate("wdl")

