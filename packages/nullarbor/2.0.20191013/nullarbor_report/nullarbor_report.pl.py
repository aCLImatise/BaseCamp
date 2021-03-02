from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Nullarbor_Report_Pl_V0_1_0 = CommandToolBuilder(tool="nullarbor_report.pl", base_command=["nullarbor-report.pl"], inputs=[ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="--name", doc=InputDocumentation(doc="Report name to put in the top heading")), ToolInput(tag="in_in_dir", input_type=Boolean(optional=True), prefix="--indir", doc=InputDocumentation(doc="Nullarbor result folder")), ToolInput(tag="in_outdir", input_type=Boolean(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Folder to build report HTML in")), ToolInput(tag="in_preview", input_type=Boolean(optional=True), prefix="--preview", doc=InputDocumentation(doc="Quick summary after 'make preview'")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="No output")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="More output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nullarbor_Report_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

