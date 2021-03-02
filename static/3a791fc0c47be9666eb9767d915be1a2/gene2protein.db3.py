from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gene2Protein_Db3_V0_1_0 = CommandToolBuilder(tool="gene2protein.db3", base_command=["gene2protein.db3"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gene2Protein_Db3_V0_1_0().translate("wdl", allow_empty_container=True)

