from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Loadcorrectedreads_V0_1_0 = CommandToolBuilder(tool="loadCorrectedReads", base_command=["loadCorrectedReads"], inputs=[ToolInput(tag="in_path_sequence_store", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="Path to a sequence store")), ToolInput(tag="in_path_correction_store", input_type=File(optional=True), prefix="-C", doc=InputDocumentation(doc="Path to a correction store")), ToolInput(tag="in_load_tigs_files", input_type=File(optional=True), prefix="-L", doc=InputDocumentation(doc="Load the tig(s) from files listed in 'file-of-files'\n(WARNING: program will succeed if this file is empty)")), ToolInput(tag="in_also_load_layout", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Also load the populated tig layout into version 2 of the corStore.\n(WARNING: not rigorously tested)")), ToolInput(tag="in_input_dot_cns", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Loadcorrectedreads_V0_1_0().translate("wdl", allow_empty_container=True)

