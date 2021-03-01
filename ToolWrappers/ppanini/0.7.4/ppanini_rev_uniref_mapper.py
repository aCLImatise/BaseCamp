from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ppanini_Rev_Uniref_Mapper_V0_1_0 = CommandToolBuilder(tool="ppanini_rev_uniref_mapper", base_command=["ppanini_rev_uniref_mapper"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ppanini_Rev_Uniref_Mapper_V0_1_0().translate("wdl", allow_empty_container=True)

