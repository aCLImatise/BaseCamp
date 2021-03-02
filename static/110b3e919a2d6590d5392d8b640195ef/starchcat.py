from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Starchcat_V0_1_0 = CommandToolBuilder(tool="starchcat", base_command=["starchcat"], inputs=[ToolInput(tag="in_note", input_type=Boolean(optional=True), prefix="--note", doc=InputDocumentation(doc="='foo bar...'   Append note to output archive metadata (optional).")), ToolInput(tag="in_bzip_two", input_type=Boolean(optional=True), prefix="--bzip2", doc=InputDocumentation(doc="Specify backend compression type (optional, default\nis bzip2).")), ToolInput(tag="in_omit_signature", input_type=Boolean(optional=True), prefix="--omit-signature", doc=InputDocumentation(doc="Skip generating per-chromosome data integrity signature\n(optional, default is to generate signature).")), ToolInput(tag="in_report_progress", input_type=String(optional=True), prefix="--report-progress", doc=InputDocumentation(doc="Report compression progress every N elements per\nchromosome to standard error stream (optional)")), ToolInput(tag="in_required_dot", input_type=String(), position=0, doc=InputDocumentation(doc="* While two or more inputs make sense for a multiset union operation, you"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Starchcat_V0_1_0().translate("wdl", allow_empty_container=True)

