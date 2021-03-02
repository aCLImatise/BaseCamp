from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Links2Sql_Pl_V0_1_0 = CommandToolBuilder(tool="links2sql.pl", base_command=["links2sql.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Links2Sql_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

