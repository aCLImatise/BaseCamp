from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Embl_Swissprot_Parser_Pl_V0_1_0 = CommandToolBuilder(tool="EMBL_swissprot_parser.pl", base_command=["EMBL_swissprot_parser.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Embl_Swissprot_Parser_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

