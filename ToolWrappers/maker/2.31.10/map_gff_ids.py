from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Map_Gff_Ids_V0_1_0 = CommandToolBuilder(tool="map_gff_ids", base_command=["map_gff_ids"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Map_Gff_Ids_V0_1_0().translate("wdl", allow_empty_container=True)

