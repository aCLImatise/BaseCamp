from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Rgi_Baits_Annotation_V0_1_0 = CommandToolBuilder(tool="rgi_baits_annotation", base_command=["rgi", "baits_annotation"], inputs=[ToolInput(tag="in_index_file", input_type=File(optional=True), prefix="--index_file", doc=InputDocumentation(doc="index file with baits information\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Baits_Annotation_V0_1_0().translate("wdl", allow_empty_container=True)

