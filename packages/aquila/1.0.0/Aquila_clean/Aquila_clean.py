from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int

Aquila_Clean_V0_1_0 = CommandToolBuilder(tool="Aquila_clean", base_command=["Aquila_clean"], inputs=[ToolInput(tag="in_assembly_dir", input_type=Directory(optional=True), prefix="--assembly_dir", doc=InputDocumentation(doc="assembly folder")), ToolInput(tag="in_chr_start", input_type=String(optional=True), prefix="--chr_start", doc=InputDocumentation(doc="chromosome start from")), ToolInput(tag="in_chr_end", input_type=String(optional=True), prefix="--chr_end", doc=InputDocumentation(doc="chromosome end by")), ToolInput(tag="in_num_of_threads", input_type=Int(optional=True), prefix="--num_of_threads", doc=InputDocumentation(doc="number of threads\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aquila_Clean_V0_1_0().translate("wdl", allow_empty_container=True)

