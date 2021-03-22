from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Remove_Minimap2_Duplicated_Headers_V0_1_0 = CommandToolBuilder(tool="remove_minimap2_duplicated_headers", base_command=["remove_minimap2_duplicated_headers"], inputs=[], outputs=[], container="quay.io/biocontainers/rosella:0.3.3--h443a992_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Minimap2_Duplicated_Headers_V0_1_0().translate("wdl")

