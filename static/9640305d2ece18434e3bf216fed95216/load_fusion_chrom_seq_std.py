from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Load_Fusion_Chrom_Seq_Std_V0_1_0 = CommandToolBuilder(tool="load_fusion_chrom_seq_std", base_command=["load_fusion_chrom_seq_std"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Load_Fusion_Chrom_Seq_Std_V0_1_0().translate("wdl", allow_empty_container=True)

