from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cactus_Blast_Chunkflowersequences_V0_1_0 = CommandToolBuilder(tool="cactus_blast_chunkFlowerSequences", base_command=["cactus_blast_chunkFlowerSequences"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Blast_Chunkflowersequences_V0_1_0().translate("wdl", allow_empty_container=True)

