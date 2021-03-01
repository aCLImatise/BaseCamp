from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Remove_Minimap2_Duplicated_Headers_V0_1_0 = CommandToolBuilder(tool="remove_minimap2_duplicated_headers", base_command=["remove_minimap2_duplicated_headers"], inputs=[], outputs=[], container="quay.io/biocontainers/lorikeet-genome:0.5.0--h9eda3c7_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Minimap2_Duplicated_Headers_V0_1_0().translate("wdl")

