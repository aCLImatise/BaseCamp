from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Tgstoreload_V0_1_0 = CommandToolBuilder(tool="tgStoreLoad", base_command=["tgStoreLoad"], inputs=[ToolInput(tag="in_path_sequence_store", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="Path to the sequence store")), ToolInput(tag="in_path_tigstore_version", input_type=File(optional=True), prefix="-T", doc=InputDocumentation(doc="<v>     Path to the tigStore and version to add tigs to")), ToolInput(tag="in_load_tigs_files", input_type=File(optional=True), prefix="-L", doc=InputDocumentation(doc="Load the tig(s) from files listed in 'file-of-files'\n(WARNING: program will succeed if this file is empty)")), ToolInput(tag="in_load_just_report", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Don't load into store, just report what would have happened")), ToolInput(tag="in_dump", input_type=Boolean(optional=True), prefix="-dump", doc=InputDocumentation(doc="Dump the cns files as ASCII, don't load into store")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="Test the cns files for various errors, don't load into store")), ToolInput(tag="in_v", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_dot_cns", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tgstoreload_V0_1_0().translate("wdl", allow_empty_container=True)

