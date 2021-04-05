from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plot_Genomic_Kmers_R_V0_1_0 = CommandToolBuilder(tool="plot_genomic_kmers.r", base_command=["plot_genomic_kmers.r"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Genomic_Kmers_R_V0_1_0().translate("wdl", allow_empty_container=True)

