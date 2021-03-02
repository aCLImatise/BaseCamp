from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tblastn_Hit_Chainer_Nonoverlapping_Genome_Dp_Extraction_Pl_V0_1_0 = CommandToolBuilder(tool="TBLASTN_hit_chainer_nonoverlapping_genome_DP_extraction.pl", base_command=["TBLASTN_hit_chainer_nonoverlapping_genome_DP_extraction.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tblastn_Hit_Chainer_Nonoverlapping_Genome_Dp_Extraction_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

