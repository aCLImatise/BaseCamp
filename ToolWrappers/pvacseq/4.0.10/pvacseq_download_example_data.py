from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pvacseq_Download_Example_Data_V0_1_0 = CommandToolBuilder(tool="pvacseq_download_example_data", base_command=["pvacseq", "download_example_data"], inputs=[ToolInput(tag="in_destination_directory", input_type=String(), position=0, doc=InputDocumentation(doc="Directory for downloading example data"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pvacseq_Download_Example_Data_V0_1_0().translate("wdl", allow_empty_container=True)

