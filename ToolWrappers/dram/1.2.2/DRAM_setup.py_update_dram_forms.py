from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Dram_Setup_Py_Update_Dram_Forms_V0_1_0 = CommandToolBuilder(tool="DRAM_setup.py_update_dram_forms", base_command=["DRAM-setup.py", "update_dram_forms"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Directory to store newly downloaded files, may want\nthis to be the same directory as the rest of your DRAM\ndatabase files (default: None)\n"))], outputs=[], container="quay.io/biocontainers/dram:1.2.2--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dram_Setup_Py_Update_Dram_Forms_V0_1_0().translate("wdl")

