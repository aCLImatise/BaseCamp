from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Quast_Download_Busco_V0_1_0 = CommandToolBuilder(tool="quast_download_busco", base_command=["quast-download-busco"], inputs=[ToolInput(tag="in_done", input_type=String(), position=0, doc=InputDocumentation(doc="Downloading BUSCO database..."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quast_Download_Busco_V0_1_0().translate("wdl", allow_empty_container=True)

