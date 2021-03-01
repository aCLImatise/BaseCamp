from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Hmmscore_V0_1_0 = CommandToolBuilder(tool="hmmscore", base_command=["hmmscore"], inputs=[ToolInput(tag="in_db", input_type=File(optional=True), prefix="-db", doc=InputDocumentation(doc="[-db seq_filen]*     one or more sequence files")), ToolInput(tag="in_calibrate", input_type=Int(optional=True), prefix="-calibrate", doc=InputDocumentation(doc="or calibrate E-values")), ToolInput(tag="in_track_prior", input_type=Int(optional=True), prefix="-trackprior", doc=InputDocumentation(doc=",<prior2>..   Dirichlets for calibration")), ToolInput(tag="in_track_mod", input_type=File(optional=True), prefix="-trackmod", doc=InputDocumentation(doc=",file2,...         or ....")), ToolInput(tag="in_model_library", input_type=File(optional=True), prefix="-modellibrary", doc=InputDocumentation(doc=",...           or ....")), ToolInput(tag="in_query", input_type=String(optional=True), prefix="-query", doc=InputDocumentation(doc="&W_query_sequence         required ....")), ToolInput(tag="in_option", input_type=String(optional=True), prefix="-option", doc=InputDocumentation(doc="")), ToolInput(tag="in_run_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmscore_V0_1_0().translate("wdl", allow_empty_container=True)

