from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int

Samsplit_V0_1_0 = CommandToolBuilder(tool="samsplit", base_command=["samsplit"], inputs=[ToolInput(tag="in_write_output_files", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Write output files in BAM format")), ToolInput(tag="in_emit_only_alignment", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Emit only alignment records matching FLAGS")), ToolInput(tag="in_write_selected_records", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Write all selected records to FILE, in addition to splitting")), ToolInput(tag="in_discard_reads_less", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="Discard reads with mapping quality less than NUM")), ToolInput(tag="in_compress_output_files", input_type=Int(optional=True), prefix="-z", doc=InputDocumentation(doc="Compress output files at level NUM (default for BAM; none for SAM)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samsplit_V0_1_0().translate("wdl", allow_empty_container=True)

