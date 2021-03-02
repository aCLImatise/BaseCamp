from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Boolean, String

Hailctl_Dataproc_Diagnose_V0_1_0 = CommandToolBuilder(tool="hailctl_dataproc_diagnose", base_command=["hailctl", "dataproc", "diagnose"], inputs=[ToolInput(tag="in_dest", input_type=Directory(optional=True), prefix="--dest", doc=InputDocumentation(doc="Directory for diagnose output -- must be local.")), ToolInput(tag="in_hail_log", input_type=File(optional=True), prefix="--hail-log", doc=InputDocumentation(doc="Path for hail.log file.")), ToolInput(tag="in_overwrite", input_type=Boolean(optional=True), prefix="--overwrite", doc=InputDocumentation(doc="Delete dest directory before adding new files.")), ToolInput(tag="in_no_diagnose", input_type=Boolean(optional=True), prefix="--no-diagnose", doc=InputDocumentation(doc="Do not run gcloud dataproc clusters diagnose.")), ToolInput(tag="in_compress", input_type=Boolean(optional=True), prefix="--compress", doc=InputDocumentation(doc="GZIP all files.")), ToolInput(tag="in_workers", input_type=Boolean(optional=True), prefix="--workers", doc=InputDocumentation(doc="[WORKERS [WORKERS ...]]\nSpecific workers to get log files from.")), ToolInput(tag="in_take", input_type=String(optional=True), prefix="--take", doc=InputDocumentation(doc="Only download logs from the first N workers."))], outputs=[ToolOutput(tag="out_dest", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_dest", type_hint=File()), doc=OutputDocumentation(doc="Directory for diagnose output -- must be local."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hailctl_Dataproc_Diagnose_V0_1_0().translate("wdl", allow_empty_container=True)

