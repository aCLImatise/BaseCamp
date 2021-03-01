from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Isnovoindex_V0_1_0 = CommandToolBuilder(tool="isnovoindex", base_command=["isnovoindex"], inputs=[ToolInput(tag="in_filename_valid_novoindex", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="filename is not a valid novoindex\n0 is a nucleotide space index\n1 is a bisulphite nucleotide index\n2 is a colour space index\n")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isnovoindex_V0_1_0().translate("wdl", allow_empty_container=True)

