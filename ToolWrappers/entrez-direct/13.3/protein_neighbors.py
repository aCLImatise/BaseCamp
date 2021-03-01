from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Protein_Neighbors_V0_1_0 = CommandToolBuilder(tool="protein_neighbors", base_command=["protein-neighbors"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Protein_Neighbors_V0_1_0().translate("wdl", allow_empty_container=True)

