from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cansnper2_Download_V0_1_0 = CommandToolBuilder(tool="CanSNPer2_download", base_command=["CanSNPer2-download"], inputs=[ToolInput(tag="in_database", input_type=Boolean(optional=True), prefix="--database", doc=InputDocumentation(doc="CanSNP database")), ToolInput(tag="in_source", input_type=Boolean(optional=True), prefix="--source", doc=InputDocumentation(doc="Source for download (genbank/refseq)")), ToolInput(tag="in_outdir", input_type=Boolean(optional=True), prefix="--outdir", doc=InputDocumentation(doc="reference genomes folder")), ToolInput(tag="in_logs", input_type=Boolean(optional=True), prefix="--logs", doc=InputDocumentation(doc="Specify log directory")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose logging"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cansnper2_Download_V0_1_0().translate("wdl", allow_empty_container=True)

