from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Gffutils_Cli_Rmdups_V0_1_0 = CommandToolBuilder(tool="gffutils_cli_rmdups", base_command=["gffutils-cli", "rmdups"], inputs=[ToolInput(tag="in_in_place", input_type=Boolean(optional=True), prefix="--in-place", doc=InputDocumentation(doc="Remove duplicates in place (overwrite current file.) (default:\nFalse)\n")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc="GFF or GTF file to use."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gffutils_Cli_Rmdups_V0_1_0().translate("wdl", allow_empty_container=True)

