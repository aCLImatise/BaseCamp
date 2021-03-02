from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Test_Data_Fastq_V0_1_0 = CommandToolBuilder(tool="test_data.fastq", base_command=["test_data.fastq"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Data_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

