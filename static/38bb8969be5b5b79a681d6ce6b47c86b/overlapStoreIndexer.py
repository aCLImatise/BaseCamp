from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Overlapstoreindexer_V0_1_0 = CommandToolBuilder(tool="overlapStoreIndexer", base_command=["overlapStoreIndexer"], inputs=[ToolInput(tag="in_path_overlap_store", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="path to overlap store to build the final index for")), ToolInput(tag="in_number_slices_used", input_type=Int(optional=True), prefix="-F", doc=InputDocumentation(doc="number of slices used in bucketizing/sorting")), ToolInput(tag="in_explicitly_test_index", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="explicitly test a previously constructed index")), ToolInput(tag="in_when_testing_also", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="when testing, also create a new 'idx.fixed' which might resolve\nrare problems")), ToolInput(tag="in_delete", input_type=Boolean(optional=True), prefix="-delete", doc=InputDocumentation(doc="remove intermediate files when the index is successfully created"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Overlapstoreindexer_V0_1_0().translate("wdl", allow_empty_container=True)

