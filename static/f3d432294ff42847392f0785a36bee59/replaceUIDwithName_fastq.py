from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Replaceuidwithname_Fastq_V0_1_0 = CommandToolBuilder(tool="replaceUIDwithName_fastq", base_command=["replaceUIDwithName-fastq"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Replaceuidwithname_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

