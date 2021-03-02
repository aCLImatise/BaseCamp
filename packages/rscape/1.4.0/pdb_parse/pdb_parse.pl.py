from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pdb_Parse_Pl_V0_1_0 = CommandToolBuilder(tool="pdb_parse.pl", base_command=["pdb_parse.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pdb_Parse_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

