from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Contig_To_Chr_Coords_V0_1_0 = CommandToolBuilder(tool="contig_to_chr_coords", base_command=["contig_to_chr_coords"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Contig_To_Chr_Coords_V0_1_0().translate("wdl", allow_empty_container=True)

