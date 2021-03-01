from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean, Int, String

Kallisto_Pseudo_V0_1_0 = CommandToolBuilder(tool="kallisto_pseudo", base_command=["kallisto", "pseudo"], inputs=[ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Filename for the kallisto index to be used for\npseudoalignment")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Directory to write output to")), ToolInput(tag="in_umi", input_type=Boolean(optional=True), prefix="--umi", doc=InputDocumentation(doc="First file in pair is a UMI file")), ToolInput(tag="in_batch", input_type=File(optional=True), prefix="--batch", doc=InputDocumentation(doc="Process files listed in FILE\n--quant                   Quantify using EM algorithm (only in batch mode)\n--single                  Quantify single-end reads")), ToolInput(tag="in_fragment_length", input_type=Int(optional=True), prefix="--fragment-length", doc=InputDocumentation(doc="Estimated average fragment length")), ToolInput(tag="in_sd", input_type=Int(optional=True), prefix="--sd", doc=InputDocumentation(doc="Estimated standard deviation of fragment length\n(default: -l, -s values are estimated from paired\nend data, but are required when using --single)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use (default: 1)")), ToolInput(tag="in_arguments", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q_files", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory to write output to"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kallisto_Pseudo_V0_1_0().translate("wdl", allow_empty_container=True)

