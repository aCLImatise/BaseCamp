from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Ovstoreindexer_V0_1_0 = CommandToolBuilder(tool="ovStoreIndexer", base_command=["ovStoreIndexer"], inputs=[ToolInput(tag="in_path_overlap_store", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc="path to overlap store to create")), ToolInput(tag="in_path_sequence_store", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="path to sequence store")), ToolInput(tag="in_path_ovstoreconfig_configuration", input_type=File(optional=True), prefix="-C", doc=InputDocumentation(doc="path to ovStoreConfig configuration file")), ToolInput(tag="in_delete", input_type=Boolean(optional=True), prefix="-delete", doc=InputDocumentation(doc="remove intermediate files when the index is\nsuccessfully created"))], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ovstoreindexer_V0_1_0().translate("wdl")

