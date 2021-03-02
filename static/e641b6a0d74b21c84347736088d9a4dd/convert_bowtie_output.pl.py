from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Convert_Bowtie_Output_Pl_V0_1_0 = CommandToolBuilder(tool="convert_bowtie_output.pl", base_command=["convert_bowtie_output.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Bowtie_Output_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

