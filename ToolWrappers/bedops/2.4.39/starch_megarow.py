from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Starch_Megarow_V0_1_0 = CommandToolBuilder(tool="starch_megarow", base_command=["starch-megarow"], inputs=[ToolInput(tag="in_note", input_type=Boolean(optional=True), prefix="--note", doc=InputDocumentation(doc="='foo bar...'   Append note to output archive metadata (optional).")), ToolInput(tag="in_bzip_two", input_type=Boolean(optional=True), prefix="--bzip2", doc=InputDocumentation(doc="Specify backend compression type (optional, default\nis bzip2).")), ToolInput(tag="in_omit_signature", input_type=Boolean(optional=True), prefix="--omit-signature", doc=InputDocumentation(doc="Skip generating per-chromosome data integrity signature\n(optional, default is to generate signature).")), ToolInput(tag="in_report_progress", input_type=String(optional=True), prefix="--report-progress", doc=InputDocumentation(doc="Report compression progress every N elements per\nchromosome to standard error stream (optional)")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="Support BED input with custom UCSC track, SAM or VCF\nheaders, or generic comments (optional).")), ToolInput(tag="in_faster_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Process Flags")), ToolInput(tag="in_data_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--version             Show binary version."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Starch_Megarow_V0_1_0().translate("wdl", allow_empty_container=True)

