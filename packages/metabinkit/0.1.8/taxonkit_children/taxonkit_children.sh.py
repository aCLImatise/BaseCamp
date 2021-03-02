from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Taxonkit_Children_Sh_V0_1_0 = CommandToolBuilder(tool="taxonkit_children.sh", base_command=["taxonkit_children.sh"], inputs=[ToolInput(tag="in_file_tax_ids", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_path_to_folder_with_taxonomy", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxonkit_Children_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

