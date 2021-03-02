from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Convert_To_Fastq_Sh_V0_1_0 = CommandToolBuilder(tool="convert_to_fastq.sh", base_command=["convert_to_fastq.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_To_Fastq_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

