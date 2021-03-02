from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Tgstorecompress_V0_1_0 = CommandToolBuilder(tool="tgStoreCompress", base_command=["tgStoreCompress"], inputs=[ToolInput(tag="in_path_sequence_store", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="Path to a sequence store")), ToolInput(tag="in_path_tigstore_version", input_type=File(optional=True), prefix="-T", doc=InputDocumentation(doc="<v>     Path to a tigStore and version to add tigs to")), ToolInput(tag="in_v", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tgstorecompress_V0_1_0().translate("wdl", allow_empty_container=True)

