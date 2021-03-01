from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Check_Aln_Design_File_Py_V0_1_0 = CommandToolBuilder(tool="check_aln_design_file.py", base_command=["check_aln_design_file.py"], inputs=[ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file containing fq file names and sample ids\n[Required]")), ToolInput(tag="in_dups", input_type=File(optional=True), prefix="--dups", doc=InputDocumentation(doc="File containing list of duplicate fqNames in design")), ToolInput(tag="in_l", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="-l LOGFILE, --logfile LOGFILE"))], outputs=[], container="quay.io/biocontainers/bayesase:21.1.13.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Aln_Design_File_Py_V0_1_0().translate("wdl")

