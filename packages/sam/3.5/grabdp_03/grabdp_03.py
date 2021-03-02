from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Grabdp_03_V0_1_0 = CommandToolBuilder(tool="grabdp_03", base_command=["grabdp", "03"], inputs=[ToolInput(tag="in_required_or_modelfile", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="required (or -modelfile)")), ToolInput(tag="in_db", input_type=File(optional=True), prefix="-db", doc=InputDocumentation(doc="required if -match_probs not specified")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="-id", doc=InputDocumentation(doc="optional")), ToolInput(tag="in_dp_style", input_type=Int(optional=True), prefix="-dpstyle", doc=InputDocumentation(doc="optional -- create <runname>.pdoc\nposterior decoding of model and\nfirst db sequence or -id sequence.\nuse view_pdoc to inspect.")), ToolInput(tag="in_dump_match_probs", input_type=Int(optional=True), prefix="-dump_match_probs", doc=InputDocumentation(doc="If 1, then dump the model match probabilities\nin a rdb file name <runname>.match-rdb\n")), ToolInput(tag="in_option", input_type=String(optional=True), prefix="-option", doc=InputDocumentation(doc="")), ToolInput(tag="in_grab_dp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_run_name", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Grabdp_03_V0_1_0().translate("wdl", allow_empty_container=True)

