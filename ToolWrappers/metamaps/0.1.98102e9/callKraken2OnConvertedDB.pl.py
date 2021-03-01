from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Callkraken2Onconverteddb_Pl_V0_1_0 = CommandToolBuilder(tool="callKraken2OnConvertedDB.pl", base_command=["callKraken2OnConvertedDB.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Callkraken2Onconverteddb_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

