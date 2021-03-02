from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Fermi_Contrast_V0_1_0 = CommandToolBuilder(tool="fermi_contrast", base_command=["fermi", "contrast"], inputs=[ToolInput(tag="in_minimum_occurrence", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="minimum occurrence [3]")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_kmer_length", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length [55]")), ToolInput(tag="in_idx_one_dot_fmd", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_idx_one_dot_rank", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_one_two_dot_sub", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_idx_two_dot_fmd", input_type=Int(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_idx_two_dot_rank", input_type=Int(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_two_one_dot_sub", input_type=Int(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Contrast_V0_1_0().translate("wdl", allow_empty_container=True)

