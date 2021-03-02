from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Admin_Ensembltranscriptfilter_Pl_V0_1_0 = CommandToolBuilder(tool="Admin_EnsemblTranscriptFilter.pl", base_command=["Admin_EnsemblTranscriptFilter.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Admin_Ensembltranscriptfilter_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

