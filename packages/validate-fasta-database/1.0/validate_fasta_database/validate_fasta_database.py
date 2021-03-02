from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Validate_Fasta_Database_V0_1_0 = CommandToolBuilder(tool="validate_fasta_database", base_command=["validate-fasta-database"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Validate_Fasta_Database_V0_1_0().translate("wdl", allow_empty_container=True)

