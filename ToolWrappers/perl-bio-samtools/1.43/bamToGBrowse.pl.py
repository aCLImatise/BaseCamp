from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bamtogbrowse_Pl_V0_1_0 = CommandToolBuilder(tool="bamToGBrowse.pl", base_command=["bamToGBrowse.pl"], inputs=[ToolInput(tag="in_bed_graph_to_bigwig", input_type=String(), position=0, doc=InputDocumentation(doc="-- download from http://hgdownload.cse.ucsc.edu/admin/exe\nor build from source downloadable from\nhttp;//hgdownload.cse.ucsc.edu/admin/jksrc.zip"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtogbrowse_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

