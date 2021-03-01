from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean

Behst_Download_Data_V0_1_0 = CommandToolBuilder(tool="behst_download_data", base_command=["behst-download-data"], inputs=[ToolInput(tag="in_data", input_type=Directory(optional=True), prefix="--data", doc=InputDocumentation(doc="Folder where to download the default data files\n(default $XDG_DATA_HOME/behst, if set, or\n$HOME/.local/share/behst otherwise)")), ToolInput(tag="in_small", input_type=Boolean(optional=True), prefix="--small", doc=InputDocumentation(doc="If activated, download only the minimal set of files\nto test BEHST functionality (default files needed for\nvalid genomic set enrichment)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Behst_Download_Data_V0_1_0().translate("wdl", allow_empty_container=True)

