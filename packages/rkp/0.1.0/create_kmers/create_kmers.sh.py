from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Create_Kmers_Sh_V0_1_0 = CommandToolBuilder(tool="create_kmers.sh", base_command=["create_kmers.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Kmers_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

