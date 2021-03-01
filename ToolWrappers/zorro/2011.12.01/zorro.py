from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Zorro_V0_1_0 = CommandToolBuilder(tool="zorro", base_command=["zorro"], inputs=[ToolInput(tag="in_sample", input_type=Boolean(optional=True), prefix="-sample", doc=InputDocumentation(doc=": Sampling pairs to calculate alignment reliabilty [Off By Default]")), ToolInput(tag="in_no_sample", input_type=Boolean(optional=True), prefix="-nosample", doc=InputDocumentation(doc=": No Sampling i.e. using every pair to calculate alignment reliabilty [On By Default]")), ToolInput(tag="in_no_weighting", input_type=Boolean(optional=True), prefix="-noweighting", doc=InputDocumentation(doc=": Using sum of pairs instead of weighted sum of pairs to calculate column confidence [Off By Default]")), ToolInput(tag="in_ignore_gaps", input_type=Boolean(optional=True), prefix="-ignoregaps", doc=InputDocumentation(doc=": Ignore pair-gaps in columns when calculating column confidences [Off By Default]")), ToolInput(tag="in_n_sample", input_type=Int(optional=True), prefix="-Nsample", doc=InputDocumentation(doc=": Tells ZORRO to sample #NUMBER pairs when sampling, automatically turns on -sample option [Samples 10*Nseq sequences By Default]")), ToolInput(tag="in_tree_prog", input_type=String(optional=True), prefix="-treeprog", doc=InputDocumentation(doc=": Tells ZORRO to use PROGRAM instead of the default FastTree to create guide tree [FastTree By Default]")), ToolInput(tag="in_guide", input_type=File(optional=True), prefix="-guide", doc=InputDocumentation(doc=": User provided guide tree")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Zorro_V0_1_0().translate("wdl", allow_empty_container=True)

