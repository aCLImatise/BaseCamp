from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fc_Contig_Annotate_V0_1_0 = CommandToolBuilder(tool="fc_contig_annotate", base_command=["fc_contig_annotate"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Contig_Annotate_V0_1_0().translate("wdl", allow_empty_container=True)

