from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Gffutils_Cli_Sanitize_V0_1_0 = CommandToolBuilder(tool="gffutils_cli_sanitize", base_command=["gffutils-cli", "sanitize"], inputs=[ToolInput(tag="in_in_memory", input_type=Boolean(optional=True), prefix="--in-memory", doc=InputDocumentation(doc="Load GFF into memory for processing. (default: True)")), ToolInput(tag="in_in_place", input_type=Boolean(optional=True), prefix="--in-place", doc=InputDocumentation(doc="Sanitize file in-place: overwrites current file with sanitized\nversion. (default: False)\n")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc="GFF or GTF file to use (or GFF database.)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gffutils_Cli_Sanitize_V0_1_0().translate("wdl", allow_empty_container=True)

