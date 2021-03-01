from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Kc_Align_V0_1_0 = CommandToolBuilder(tool="kc_align", base_command=["kc-align"], inputs=[ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference sequence")), ToolInput(tag="in_sequences", input_type=String(optional=True), prefix="--sequences", doc=InputDocumentation(doc="Other sequences to align")), ToolInput(tag="in_start", input_type=Int(optional=True), prefix="--start", doc=InputDocumentation(doc="1-based start position (required in genome mode)")), ToolInput(tag="in_end", input_type=Int(optional=True), prefix="--end", doc=InputDocumentation(doc="1-based end position (required in genome mode)")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="Alignment mode (genome, gene, or mixed) (required)")), ToolInput(tag="in_compress", input_type=Boolean(optional=True), prefix="--compress", doc=InputDocumentation(doc="Compress identical sequences")), ToolInput(tag="in_table", input_type=String(optional=True), prefix="--table", doc=InputDocumentation(doc="Choose alternative translation table (See https://www.\nncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi for\nvalues)")), ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="Keep translated pre-alignment sequences file named\npre_align.fasta, otherwise will delete")), ToolInput(tag="in_dist", input_type=String(optional=True), prefix="--dist", doc=InputDocumentation(doc="For genome/mixed mode, determines the max distance a\nhomologous sequence can be before it is discarded from\nthe alignment (default = none). Distance limits: none\n< very-close < close < semi-close < less-close")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of simultaneous threads to use (must be a\nmultiple of 3)"))], outputs=[], container="quay.io/biocontainers/kcalign:1.0.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kc_Align_V0_1_0().translate("wdl")

