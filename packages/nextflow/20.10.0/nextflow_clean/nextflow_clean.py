from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nextflow_Clean_V0_1_0 = CommandToolBuilder(tool="nextflow_clean", base_command=["nextflow", "clean"], inputs=[ToolInput(tag="in_after", input_type=Boolean(optional=True), prefix="-after", doc=InputDocumentation(doc="Clean up runs executed after the specified one")), ToolInput(tag="in_before", input_type=Boolean(optional=True), prefix="-before", doc=InputDocumentation(doc="Clean up runs executed before the specified one")), ToolInput(tag="in_but", input_type=Boolean(optional=True), prefix="-but", doc=InputDocumentation(doc="Clean up all runs except the specified one")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="-dry-run", doc=InputDocumentation(doc="Print names of file to be removed without deleting them\nDefault: false")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-force", doc=InputDocumentation(doc="Force clean command\nDefault: false")), ToolInput(tag="in_keep_logs", input_type=Boolean(optional=True), prefix="-keep-logs", doc=InputDocumentation(doc="Removes only temporary files but retains execution log entries and\nmetadata\nDefault: false")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="Do not print names of files removed\nDefault: false\n")), ToolInput(tag="in_clean", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nextflow:20.10.0--hecda079_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextflow_Clean_V0_1_0().translate("wdl")

