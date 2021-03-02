from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Import_De_Results_Pl_V0_1_0 = CommandToolBuilder(tool="import_DE_results.pl", base_command=["import_DE_results.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Import_De_Results_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

