from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Emirge_Rename_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="emirge_rename_fasta.py", base_command=["emirge_rename_fasta.py"], inputs=[ToolInput(tag="in_prob_min", input_type=Int(optional=True), prefix="--prob_min", doc=InputDocumentation(doc="Only include sequences in output with prior\nprobability above PROB_MIN (Default: include all\nsequences)")), ToolInput(tag="in_record_prefix", input_type=String(optional=True), prefix="--record_prefix", doc=InputDocumentation(doc="Add the specified prefix to each fasta record title")), ToolInput(tag="in_no_n", input_type=Boolean(optional=True), prefix="--no_N", doc=InputDocumentation(doc="Don't change bases with no read support to N.\nCaution: these bases are not supported by reads in the\ninput data, but will usually be from a closely related\nsequence.")), ToolInput(tag="in_no_trim_n", input_type=Boolean(optional=True), prefix="--no_trim_N", doc=InputDocumentation(doc="Don't trim off N bases with no read support from ends\nof sequences.  Ignored if --no_N is also passed\n")), ToolInput(tag="in_iter_dot_dir", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Emirge_Rename_Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

