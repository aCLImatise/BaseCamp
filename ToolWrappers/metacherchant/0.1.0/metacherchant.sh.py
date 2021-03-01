from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Directory, Boolean, String

Metacherchant_Sh_V0_1_0 = CommandToolBuilder(tool="metacherchant.sh", base_command=["metacherchant.sh"], inputs=[ToolInput(tag="in_kmer_size_mandatory", input_type=Int(optional=True), prefix="--k", doc=InputDocumentation(doc="k-mer size (MANDATORY)")), ToolInput(tag="in_seq", input_type=File(optional=True), prefix="--seq", doc=InputDocumentation(doc="FASTA file with sequences (MANDATORY)")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="output directory (MANDATORY)")), ToolInput(tag="in_memory", input_type=Int(optional=True), prefix="--memory", doc=InputDocumentation(doc="memory to use (for example: 1500M, 4G, etc.) (optional, default: 2 Gb)")), ToolInput(tag="in_work_dir", input_type=Directory(optional=True), prefix="--work-dir", doc=InputDocumentation(doc="working directory (optional, default: workDir)")), ToolInput(tag="in_continue", input_type=Boolean(optional=True), prefix="--continue", doc=InputDocumentation(doc="continue the previous run from last succeed stage, saved in working directory (optional)")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="force run with rewriting old results (optional)")), ToolInput(tag="in_launch_options", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_parameters", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output directory (MANDATORY)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metacherchant_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

