from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Smof_Sniff_V0_1_0 = CommandToolBuilder(tool="smof_sniff", base_command=["smof", "sniff"], inputs=[ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Sniff_V0_1_0().translate("wdl", allow_empty_container=True)

