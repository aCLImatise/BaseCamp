from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Map_Fasta_Ids_V0_1_0 = CommandToolBuilder(tool="map_fasta_ids", base_command=["map_fasta_ids"], inputs=[], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Map_Fasta_Ids_V0_1_0().translate("wdl")

