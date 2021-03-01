from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int

Samtools_Tview_V0_1_0 = CommandToolBuilder(tool="samtools_tview", base_command=["samtools", "tview"], inputs=[ToolInput(tag="in_output_html_text", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="output as (H)tml or (C)urses or (T)ext")), ToolInput(tag="in_include_customized_file", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc="include customized index file")), ToolInput(tag="in_go_directly_position", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc=":pos      go directly to this position")), ToolInput(tag="in_display_only_reads", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="display only reads from this sample or group")), ToolInput(tag="in_input_fmt_option", input_type=File(optional=True), prefix="--input-fmt-option", doc=InputDocumentation(doc="[=VAL]\nSpecify a single input file format option in the form\nof OPTION or OPTION=VALUE")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference sequence FASTA FILE [null]")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Set level of verbosity\n")), ToolInput(tag="in_aln_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_dot_fast_a", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Tview_V0_1_0().translate("wdl", allow_empty_container=True)

