from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Go_Export_Prolog_Pl_V0_1_0 = CommandToolBuilder(tool="go_export_prolog.pl", base_command=["go-export-prolog.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Go_Export_Prolog_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

