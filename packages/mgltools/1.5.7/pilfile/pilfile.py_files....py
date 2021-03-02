from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pilfile_Py_Files____V0_1_0 = CommandToolBuilder(tool="pilfile.py_files...", base_command=["pilfile.py", "files..."], inputs=[ToolInput(tag="in_such_file_directory", input_type=File(optional=True), prefix="-h", doc=InputDocumentation(doc=": [Errno 2] No such file or directory: '-h'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pilfile_Py_Files____V0_1_0().translate("wdl", allow_empty_container=True)

