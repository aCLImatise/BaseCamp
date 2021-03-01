from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Hmmconvert2_V0_1_0 = CommandToolBuilder(tool="hmmconvert2", base_command=["hmmconvert2"], inputs=[ToolInput(tag="in_convert_hmmer_default", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": convert to HMMER ASCII file (the default)")), ToolInput(tag="in_convert_hmmer_binary", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc=": convert to HMMER binary file")), ToolInput(tag="in_convert_gcg_prf", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": convert to GCG Profile .prf format")), ToolInput(tag="in_convert_extended_format", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc=": convert to Compugen extended .eprf profile format")), ToolInput(tag="in_append_mode_append", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc=": append mode; append to <new hmm file>")), ToolInput(tag="in_force_mode_allow", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc=": force mode; allow overwriting of existing files")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_hmm_convert", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_old_hmm_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_new_hmm_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmconvert2_V0_1_0().translate("wdl", allow_empty_container=True)

