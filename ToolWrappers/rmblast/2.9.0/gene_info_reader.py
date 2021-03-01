from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gene_Info_Reader_V0_1_0 = CommandToolBuilder(tool="gene_info_reader", base_command=["gene_info_reader"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gene_Info_Reader_V0_1_0().translate("wdl", allow_empty_container=True)

