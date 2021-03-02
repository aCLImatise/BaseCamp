from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


O_Generate_Matrix_Files_From_Environment_V0_1_0 = CommandToolBuilder(tool="o_generate_matrix_files_from_ENVIRONMENT", base_command=["o-generate-matrix-files-from-ENVIRONMENT"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Generate_Matrix_Files_From_Environment_V0_1_0().translate("wdl", allow_empty_container=True)

