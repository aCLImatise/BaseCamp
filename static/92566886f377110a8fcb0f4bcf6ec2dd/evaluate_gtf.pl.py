from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Evaluate_Gtf_Pl_V0_1_0 = CommandToolBuilder(tool="evaluate_gtf.pl", base_command=["evaluate_gtf.pl"], inputs=[ToolInput(tag="in_input_files_gtf", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc=": Input files are gtf not lists")), ToolInput(tag="in_quick_load_file", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": Quick load the gtf file.  Do not check them for errors.")), ToolInput(tag="in_evaluate_alternative_faster", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc=": Do not evaluate for alternative splicing events. (Faster)")), ToolInput(tag="in__verbose_mode", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Verbose mode")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Evaluate_Gtf_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

