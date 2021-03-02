from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Gffutils_Cli_Clean_V0_1_0 = CommandToolBuilder(tool="gffutils_cli_clean", base_command=["gffutils-cli", "clean"], inputs=[ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc="GFF or GTF file to use"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gffutils_Cli_Clean_V0_1_0().translate("wdl", allow_empty_container=True)

