from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Rgi_Wildcard_Annotation_V0_1_0 = CommandToolBuilder(tool="rgi_wildcard_annotation", base_command=["rgi", "wildcard_annotation"], inputs=[ToolInput(tag="in_input_directory", input_type=Directory(optional=True), prefix="--input_directory", doc=InputDocumentation(doc="input directory for wildcard")), ToolInput(tag="in_card_json", input_type=File(optional=True), prefix="--card_json", doc=InputDocumentation(doc="card.json file\n")), ToolInput(tag="in_v", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Wildcard_Annotation_V0_1_0().translate("wdl", allow_empty_container=True)

