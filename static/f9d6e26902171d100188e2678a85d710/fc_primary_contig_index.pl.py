from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fc_Primary_Contig_Index_Pl_V0_1_0 = CommandToolBuilder(tool="fc_primary_contig_index.pl", base_command=["fc_primary_contig_index.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Primary_Contig_Index_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

