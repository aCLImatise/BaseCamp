from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Loaderates_V0_1_0 = CommandToolBuilder(tool="loadErates", base_command=["loadErates"], inputs=[ToolInput(tag="in_path_overlap_store", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc="path to the overlap store to create")), ToolInput(tag="in_path_sequence_store", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="path to a sequence store")), ToolInput(tag="in_list_evalue_files", input_type=File(optional=True), prefix="-L", doc=InputDocumentation(doc="a list of evalue files in 'fileList'")), ToolInput(tag="in_evalue_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Loaderates_V0_1_0().translate("wdl")

