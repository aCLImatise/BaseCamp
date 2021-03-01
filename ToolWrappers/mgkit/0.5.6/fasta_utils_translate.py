from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fasta_Utils_Translate_V0_1_0 = CommandToolBuilder(tool="fasta_utils_translate", base_command=["fasta-utils", "translate"], inputs=[ToolInput(tag="in_trans_table", input_type=Boolean(optional=True), prefix="--trans-table", doc=InputDocumentation(doc="[bac_plt|drs_mit|inv_mit|prt_mit|universal|vt_mit|yst_alt|yst_mit]\ntranslation table  [default: universal]")), ToolInput(tag="in_one_seq", input_type=Boolean(optional=True), prefix="--one-seq", doc=InputDocumentation(doc="Only translate the sequence, instead of all\n6 frames  [default: False]")), ToolInput(tag="in_no_wrap", input_type=Boolean(optional=True), prefix="--no-wrap", doc=InputDocumentation(doc="Make a sequence use only 1 line (2 including\nheader)  [default: False]")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_fast_a_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Utils_Translate_V0_1_0().translate("wdl")

