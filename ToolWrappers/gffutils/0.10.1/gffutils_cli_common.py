from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gffutils_Cli_Common_V0_1_0 = CommandToolBuilder(tool="gffutils_cli_common", base_command=["gffutils-cli", "common"], inputs=[ToolInput(tag="in_db", input_type=String(), position=0, doc=InputDocumentation(doc="Database to use. If a GFF or GTF file is provided instead for\nthis argument, a database will be created for you. This can take\nsome time (several minutes), so it's best to create one ahead of\ntime."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gffutils_Cli_Common_V0_1_0().translate("wdl", allow_empty_container=True)

