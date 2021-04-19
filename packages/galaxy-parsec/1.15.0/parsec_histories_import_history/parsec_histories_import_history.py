from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Parsec_Histories_Import_History_V0_1_0 = CommandToolBuilder(tool="parsec_histories_import_history", base_command=["parsec", "histories", "import_history"], inputs=[ToolInput(tag="in_file_path", input_type=File(optional=True), prefix="--file_path", doc=InputDocumentation(doc="Path to exported history archive on disk. :type url: str\n:param url: URL for an exported history archive"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Import_History_V0_1_0().translate("wdl")

