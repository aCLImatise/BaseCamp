from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String

Locus2Bed_V0_1_0 = CommandToolBuilder(tool="locus2bed", base_command=["locus2bed"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Path to input locus file")), ToolInput(tag="in_input_directory", input_type=Directory(optional=True), prefix="--input-directory", doc=InputDocumentation(doc="Path to directory containing locus files")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix to region names"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Locus2Bed_V0_1_0().translate("wdl", allow_empty_container=True)

