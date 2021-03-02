from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Import_Transcript_Names_Pl_V0_1_0 = CommandToolBuilder(tool="import_transcript_names.pl", base_command=["import_transcript_names.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Import_Transcript_Names_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

