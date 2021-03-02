from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Lavtoaxt_V0_1_0 = CommandToolBuilder(tool="lavToAxt", base_command=["lavToAxt"], inputs=[ToolInput(tag="in_fa", input_type=Boolean(optional=True), prefix="-fa", doc=InputDocumentation(doc="qNibDir is interpreted as a fasta file of multiple dna seq instead of directory of nibs")), ToolInput(tag="in_tfa", input_type=File(optional=True), prefix="-tfa", doc=InputDocumentation(doc="is interpreted as a fasta file of multiple dna seq instead of directory of nibs")), ToolInput(tag="in_drop_self", input_type=Boolean(optional=True), prefix="-dropSelf", doc=InputDocumentation(doc="drops alignment blocks on the diagonal for self alignments")), ToolInput(tag="in_score_scheme", input_type=File(optional=True), prefix="-scoreScheme", doc=InputDocumentation(doc="Read the scoring matrix from a blastz-format file.\n(only used in conjunction with -dropSelf, to rescore\nalignments when blocks are dropped)\n")), ToolInput(tag="in_in_dot_lav", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_t_nib_dir", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_q_nib_dir", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lavtoaxt_V0_1_0().translate("wdl", allow_empty_container=True)

