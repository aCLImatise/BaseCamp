from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int

Samsort_V0_1_0 = CommandToolBuilder(tool="samsort", base_command=["samsort"], inputs=[ToolInput(tag="in_write_output_bam", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Write output in BAM format")), ToolInput(tag="in_check_input_already", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Check whether input is already sorted")), ToolInput(tag="in_compare_records_according", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Compare records according to comparison function CMP [location]")), ToolInput(tag="in_merge_alreadysorted_files", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="Merge already-sorted files")), ToolInput(tag="in_write_output_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Write output to FILE rather than standard output")), ToolInput(tag="in_use_size_amount", input_type=Int(optional=True), prefix="-S", doc=InputDocumentation(doc="Use SIZE amount of in-memory working space")), ToolInput(tag="in_write_temporary_files", input_type=String(optional=True), prefix="-T", doc=InputDocumentation(doc="Write temporary files to DIR [$TMPDIR or /tmp]")), ToolInput(tag="in_compress_output_level", input_type=Int(optional=True), prefix="-z", doc=InputDocumentation(doc="Compress output at level NUMBER [SAM: no compression; BAM: 6]")), ToolInput(tag="in_bcm", input_type=Boolean(optional=True), prefix="-bcm", doc=InputDocumentation(doc="")), ToolInput(tag="in_location", input_type=String(), position=0, doc=InputDocumentation(doc="Order by chromosome then position (and then read name)")), ToolInput(tag="in_qname", input_type=String(), position=1, doc=InputDocumentation(doc="Order by read (query) name then first/second ordering flags"))], outputs=[ToolOutput(tag="out_write_output_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_write_output_output", type_hint=File()), doc=OutputDocumentation(doc="Write output to FILE rather than standard output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samsort_V0_1_0().translate("wdl", allow_empty_container=True)

