from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Dram_Setup_Py_Import_Config_V0_1_0 = CommandToolBuilder(tool="DRAM_setup.py_import_config", base_command=["DRAM-setup.py", "import_config"], inputs=[ToolInput(tag="in_config_loc", input_type=File(optional=True), prefix="--config_loc", doc=InputDocumentation(doc="CONFIG file to replace current CONFIG with (default:\nNone)\n"))], outputs=[], container="quay.io/biocontainers/dram:1.1.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dram_Setup_Py_Import_Config_V0_1_0().translate("wdl")

