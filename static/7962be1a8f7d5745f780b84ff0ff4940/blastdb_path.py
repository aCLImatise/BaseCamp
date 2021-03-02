from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Blastdb_Path_V0_1_0 = CommandToolBuilder(tool="blastdb_path", base_command=["blastdb_path"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blastdb_Path_V0_1_0().translate("wdl", allow_empty_container=True)

