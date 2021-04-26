from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Summary_Table_Sh_V0_1_0 = CommandToolBuilder(tool="summary_table.sh", base_command=["summary_table.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/plasmidid:1.6.5--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summary_Table_Sh_V0_1_0().translate("wdl")

