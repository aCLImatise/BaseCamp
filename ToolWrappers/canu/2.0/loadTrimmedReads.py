from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Loadtrimmedreads_V0_1_0 = CommandToolBuilder(tool="loadTrimmedReads", base_command=["loadTrimmedReads"], inputs=[ToolInput(tag="in_path_sequence_store", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="Path to the sequence store")), ToolInput(tag="in_path_file_clear", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Path to the file of clear ranges")), ToolInput(tag="in_report_clear_changes", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Report clear range changes to stderr")), ToolInput(tag="in_do_apply_changes", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Don't apply changes")), ToolInput(tag="in_test_norm", input_type=String(optional=True), prefix="-testnorm", doc=InputDocumentation(doc="e s       Test translating trim points between")), ToolInput(tag="in_test_comp", input_type=String(optional=True), prefix="-testcomp", doc=InputDocumentation(doc="e s       normal and compressed sequences.  's' must\nbe normal (uncompressed) sequence."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Loadtrimmedreads_V0_1_0().translate("wdl", allow_empty_container=True)

