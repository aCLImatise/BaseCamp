from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tripaille_Job_Add_Import_Job_V0_1_0 = CommandToolBuilder(tool="tripaille_job_add_import_job", base_command=["tripaille", "job", "add_import_job"], inputs=[ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_importer", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Job_Add_Import_Job_V0_1_0().translate("wdl", allow_empty_container=True)

