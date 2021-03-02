from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


O_Get_Sample_Info_From_Fasta_V0_1_0 = CommandToolBuilder(tool="o_get_sample_info_from_fasta", base_command=["o-get-sample-info-from-fasta"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Get_Sample_Info_From_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

