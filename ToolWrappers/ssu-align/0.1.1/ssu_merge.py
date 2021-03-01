from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Ssu_Merge_V0_1_0 = CommandToolBuilder(tool="ssu_merge", base_command=["ssu-merge"], inputs=[ToolInput(tag="in_force_allow_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": force; allow file clobbering")), ToolInput(tag="in_rf_only", input_type=Boolean(optional=True), prefix="--rfonly", doc=InputDocumentation(doc=": when merging alignments, only keep consensus (non-gap RF) columns")), ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc=": don't remove original files after they have been merged")), ToolInput(tag="in_input_alignments_interleaved", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": input alignments are interleaved Stockholm format (not 1 line/seq)")), ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--dna", doc=InputDocumentation(doc=": output alignments as DNA, default is RNA (even if input is DNA)")), ToolInput(tag="in_list", input_type=File(optional=True), prefix="--list", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dir_created_by_ssu_prep", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_a_lns", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_merge", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssu_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

