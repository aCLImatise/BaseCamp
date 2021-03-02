from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Fastqe_V0_1_0 = CommandToolBuilder(tool="fastqe", base_command=["fastqe"], inputs=[ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Minimum length sequence to include in stats (default\n0)")), ToolInput(tag="in_scale", input_type=Boolean(optional=True), prefix="--scale", doc=InputDocumentation(doc="show relevant scale in output")), ToolInput(tag="in_mean", input_type=Boolean(optional=True), prefix="--mean", doc=InputDocumentation(doc="show mean quality per position (DEFAULT)")), ToolInput(tag="in_custom", input_type=String(optional=True), prefix="--custom", doc=InputDocumentation(doc="use a mapping of custom emoji to quality in\nCUSTOM_DICT (🐍🌴)")), ToolInput(tag="in_bin", input_type=Boolean(optional=True), prefix="--bin", doc=InputDocumentation(doc="use binned scores (🚫💀💩⚠️ 😄😆😎😍)")), ToolInput(tag="in_noe_moji", input_type=Boolean(optional=True), prefix="--noemoji", doc=InputDocumentation(doc="use mapping without emoji (▁▂▃▄▅▆▇█)")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="--min", doc=InputDocumentation(doc="show minimum quality per position")), ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="--max", doc=InputDocumentation(doc="show maximum quality per position")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="write output to OUTPUT_FILE instead of stdout")), ToolInput(tag="in_long", input_type=Int(optional=True), prefix="--long", doc=InputDocumentation(doc="enable long reads up to READ_LENGTH bp long")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="record program progress in LOG_FILE")), ToolInput(tag="in_fast_q_file", input_type=String(), position=0, doc=InputDocumentation(doc="Input FASTQ files"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="write output to OUTPUT_FILE instead of stdout"))], container="quay.io/biocontainers/fastqe:0.2.6--pyh864c0ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqe_V0_1_0().translate("wdl")

